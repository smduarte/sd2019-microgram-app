import 'package:grpc/grpc.dart';
import 'package:microgram/grpc/microgram.pbgrpc.dart';
import 'dart:io';
export 'package:microgram/grpc/microgram.pb.dart';

const String MICROGRAM = "Microgram";
const String MICROGRAM_PROXY = "PROXY-MICROGRAM";

final callOptions = new CallOptions(timeout: new Duration(seconds: 30));
final channelOptions = const ChannelOptions(credentials: const ChannelCredentials.insecure());

class Microgram {
  static const int PORT = 8998;

  static MicrogramClient clt;

  static void init( Uri proxyUri ) {
    var defaultChannel = new ClientChannel(proxyUri.host, port: proxyUri.port, options: channelOptions );
    clt = new MicrogramClient(defaultChannel, options: callOptions);
  }

  static Future<Profile> getProfile(String userId) {
    var profile = new Profile()..userId = userId;
    var request = new ProfileRequest()
      ..profile = profile
      ..autocreate = false;
    return clt.getProfile(request);
  }

  static Future<Profile> getOrCreateProfile(Profile profile) {
    var request = new ProfileRequest()
      ..profile = profile
      ..autocreate = true;
    return clt.getProfile(request);
  }

  static Future<List<Profile>> searchProfiles(String query, [bool exact = false]) {
    var request = new ProfileQuery()
      ..value = query
      ..exact = exact;
    return clt.searchProfiles(request).toList();
  }

  static Future<String> createPost(Profile user, List<int> img, String location) {
    var request = new PostData()
      ..data = img
      ..location = location
      ..userId = user.userId;
    return clt.createPost(request).then((r) => r.value);
  }

  static Future<Post> getPost(String postId) {
    var request = new PostId()..value = postId;
    var result = clt.getPost(request);
    return result.first.then((p) {
      return p;
    });
  }

  static Future<List<String>> getUserPosts(String userId) {
    var request = new UserId()..value = userId;
    var result = clt.getUserPosts(request);
    return result.map((e) => e.value).toList();
  }

  static Future<List<String>> getFeedPosts(String userId) {
    var request = new UserId()..value = userId;
    var result = clt.getFeedPosts(request);
    return result.map((e) => e.value).toList();
  }

  static Future<bool> isLiked(String postId, String userId) {
    var request = new PostIdUserId()
      ..postId = postId
      ..userId = userId;
    var result = clt.isLiked(request);
    return result.then((r) => r.value);
  }

  static Future<bool> like(String postId, String userId, bool isLiked) {
    var request = new LikeRequest()
      ..postId = postId
      ..userId = userId
      ..isLiked = isLiked;
    var result = clt.like(request);
    return result.then((r) => r.value);
  }

  static Future<bool> isFollowing(String userId1, String userId2) {
    var request = new UserPair()
      ..userId1 = userId1
      ..userId2 = userId2;
    var result = clt.isFollowing(request);
    return result.then((r) => r.value);
  }

  static Future<bool> follow(String userId1, String userId2, bool isFollowing) {
    var request = new FollowRequest()
      ..userId1 = userId1
      ..userId2 = userId2
      ..isFollowing = isFollowing;
    var result = clt.follow(request);
    return result.then((r) => r.value);
  }

}

class Discover {
  static final int DISCOVERY_PORT = 2266;
  static final InternetAddress DISCOVERY_GRP =
  new InternetAddress('226.226.226.226');

  static Future<Uri> proxy() async {
    return RawDatagramSocket.bind(InternetAddress.anyIPv4, DISCOVERY_PORT)
        .then((RawDatagramSocket s) {
      s.joinMulticast(DISCOVERY_GRP);
      return s.asyncMap((_) => s.receive())
          .where((pkt) => pkt != null && pkt.data != null)
          .map((pkt) => String.fromCharCodes(pkt.data))
          .where((pkt) => pkt.endsWith('8998'))
          .map((pkt) => pkt.split('\t').last)
          .map((uri) => Uri.parse(uri)).first;
    });
  }
}

