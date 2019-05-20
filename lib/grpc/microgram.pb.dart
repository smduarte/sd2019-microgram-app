///
//  Generated code. Do not modify.
//  source: microgram.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Profile')
    ..aOS(1, 'userId')
    ..aOS(2, 'fullName')
    ..aOS(3, 'photoUrl')
    ..a<int>(4, 'posts', $pb.PbFieldType.O3)
    ..a<int>(5, 'following', $pb.PbFieldType.O3)
    ..a<int>(6, 'followers', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Profile() : super();
  Profile.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Profile.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Profile clone() => new Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  static Profile create() => new Profile();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => new $pb.PbList<Profile>();
  static Profile getDefault() => _defaultInstance ??= create()..freeze();
  static Profile _defaultInstance;
  static void $checkItem(Profile v) {
    if (v is! Profile) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  String get fullName => $_getS(1, '');
  set fullName(String v) { $_setString(1, v); }
  bool hasFullName() => $_has(1);
  void clearFullName() => clearField(2);

  String get photoUrl => $_getS(2, '');
  set photoUrl(String v) { $_setString(2, v); }
  bool hasPhotoUrl() => $_has(2);
  void clearPhotoUrl() => clearField(3);

  int get posts => $_get(3, 0);
  set posts(int v) { $_setSignedInt32(3, v); }
  bool hasPosts() => $_has(3);
  void clearPosts() => clearField(4);

  int get following => $_get(4, 0);
  set following(int v) { $_setSignedInt32(4, v); }
  bool hasFollowing() => $_has(4);
  void clearFollowing() => clearField(5);

  int get followers => $_get(5, 0);
  set followers(int v) { $_setSignedInt32(5, v); }
  bool hasFollowers() => $_has(5);
  void clearFollowers() => clearField(6);
}

class ProfileQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ProfileQuery')
    ..aOS(1, 'value')
    ..aOB(2, 'exact')
    ..hasRequiredFields = false
  ;

  ProfileQuery() : super();
  ProfileQuery.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProfileQuery.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProfileQuery clone() => new ProfileQuery()..mergeFromMessage(this);
  ProfileQuery copyWith(void Function(ProfileQuery) updates) => super.copyWith((message) => updates(message as ProfileQuery));
  $pb.BuilderInfo get info_ => _i;
  static ProfileQuery create() => new ProfileQuery();
  ProfileQuery createEmptyInstance() => create();
  static $pb.PbList<ProfileQuery> createRepeated() => new $pb.PbList<ProfileQuery>();
  static ProfileQuery getDefault() => _defaultInstance ??= create()..freeze();
  static ProfileQuery _defaultInstance;
  static void $checkItem(ProfileQuery v) {
    if (v is! ProfileQuery) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get value => $_getS(0, '');
  set value(String v) { $_setString(0, v); }
  bool hasValue() => $_has(0);
  void clearValue() => clearField(1);

  bool get exact => $_get(1, false);
  set exact(bool v) { $_setBool(1, v); }
  bool hasExact() => $_has(1);
  void clearExact() => clearField(2);
}

class UserId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UserId')
    ..aOS(1, 'value')
    ..hasRequiredFields = false
  ;

  UserId() : super();
  UserId.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UserId.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UserId clone() => new UserId()..mergeFromMessage(this);
  UserId copyWith(void Function(UserId) updates) => super.copyWith((message) => updates(message as UserId));
  $pb.BuilderInfo get info_ => _i;
  static UserId create() => new UserId();
  UserId createEmptyInstance() => create();
  static $pb.PbList<UserId> createRepeated() => new $pb.PbList<UserId>();
  static UserId getDefault() => _defaultInstance ??= create()..freeze();
  static UserId _defaultInstance;
  static void $checkItem(UserId v) {
    if (v is! UserId) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get value => $_getS(0, '');
  set value(String v) { $_setString(0, v); }
  bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class UserPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UserPair')
    ..aOS(1, 'userId1')
    ..aOS(2, 'userId2')
    ..hasRequiredFields = false
  ;

  UserPair() : super();
  UserPair.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UserPair.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UserPair clone() => new UserPair()..mergeFromMessage(this);
  UserPair copyWith(void Function(UserPair) updates) => super.copyWith((message) => updates(message as UserPair));
  $pb.BuilderInfo get info_ => _i;
  static UserPair create() => new UserPair();
  UserPair createEmptyInstance() => create();
  static $pb.PbList<UserPair> createRepeated() => new $pb.PbList<UserPair>();
  static UserPair getDefault() => _defaultInstance ??= create()..freeze();
  static UserPair _defaultInstance;
  static void $checkItem(UserPair v) {
    if (v is! UserPair) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId1 => $_getS(0, '');
  set userId1(String v) { $_setString(0, v); }
  bool hasUserId1() => $_has(0);
  void clearUserId1() => clearField(1);

  String get userId2 => $_getS(1, '');
  set userId2(String v) { $_setString(1, v); }
  bool hasUserId2() => $_has(1);
  void clearUserId2() => clearField(2);
}

class Post extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Post')
    ..aOS(1, 'postId')
    ..aOS(2, 'ownerId')
    ..aOS(3, 'mediaUrl')
    ..aOS(4, 'location')
    ..aInt64(5, 'timestamp')
    ..a<int>(6, 'likes', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Post() : super();
  Post.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Post.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Post clone() => new Post()..mergeFromMessage(this);
  Post copyWith(void Function(Post) updates) => super.copyWith((message) => updates(message as Post));
  $pb.BuilderInfo get info_ => _i;
  static Post create() => new Post();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => new $pb.PbList<Post>();
  static Post getDefault() => _defaultInstance ??= create()..freeze();
  static Post _defaultInstance;
  static void $checkItem(Post v) {
    if (v is! Post) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get postId => $_getS(0, '');
  set postId(String v) { $_setString(0, v); }
  bool hasPostId() => $_has(0);
  void clearPostId() => clearField(1);

  String get ownerId => $_getS(1, '');
  set ownerId(String v) { $_setString(1, v); }
  bool hasOwnerId() => $_has(1);
  void clearOwnerId() => clearField(2);

  String get mediaUrl => $_getS(2, '');
  set mediaUrl(String v) { $_setString(2, v); }
  bool hasMediaUrl() => $_has(2);
  void clearMediaUrl() => clearField(3);

  String get location => $_getS(3, '');
  set location(String v) { $_setString(3, v); }
  bool hasLocation() => $_has(3);
  void clearLocation() => clearField(4);

  Int64 get timestamp => $_getI64(4);
  set timestamp(Int64 v) { $_setInt64(4, v); }
  bool hasTimestamp() => $_has(4);
  void clearTimestamp() => clearField(5);

  int get likes => $_get(5, 0);
  set likes(int v) { $_setSignedInt32(5, v); }
  bool hasLikes() => $_has(5);
  void clearLikes() => clearField(6);
}

class PostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PostId')
    ..aOS(1, 'value')
    ..hasRequiredFields = false
  ;

  PostId() : super();
  PostId.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PostId.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PostId clone() => new PostId()..mergeFromMessage(this);
  PostId copyWith(void Function(PostId) updates) => super.copyWith((message) => updates(message as PostId));
  $pb.BuilderInfo get info_ => _i;
  static PostId create() => new PostId();
  PostId createEmptyInstance() => create();
  static $pb.PbList<PostId> createRepeated() => new $pb.PbList<PostId>();
  static PostId getDefault() => _defaultInstance ??= create()..freeze();
  static PostId _defaultInstance;
  static void $checkItem(PostId v) {
    if (v is! PostId) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get value => $_getS(0, '');
  set value(String v) { $_setString(0, v); }
  bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class BoolResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BoolResult')
    ..aOB(1, 'value')
    ..hasRequiredFields = false
  ;

  BoolResult() : super();
  BoolResult.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BoolResult.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BoolResult clone() => new BoolResult()..mergeFromMessage(this);
  BoolResult copyWith(void Function(BoolResult) updates) => super.copyWith((message) => updates(message as BoolResult));
  $pb.BuilderInfo get info_ => _i;
  static BoolResult create() => new BoolResult();
  BoolResult createEmptyInstance() => create();
  static $pb.PbList<BoolResult> createRepeated() => new $pb.PbList<BoolResult>();
  static BoolResult getDefault() => _defaultInstance ??= create()..freeze();
  static BoolResult _defaultInstance;
  static void $checkItem(BoolResult v) {
    if (v is! BoolResult) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  bool get value => $_get(0, false);
  set value(bool v) { $_setBool(0, v); }
  bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}

class PostData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PostData')
    ..aOS(1, 'userId')
    ..aOS(2, 'location')
    ..a<List<int>>(4, 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PostData() : super();
  PostData.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PostData.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PostData clone() => new PostData()..mergeFromMessage(this);
  PostData copyWith(void Function(PostData) updates) => super.copyWith((message) => updates(message as PostData));
  $pb.BuilderInfo get info_ => _i;
  static PostData create() => new PostData();
  PostData createEmptyInstance() => create();
  static $pb.PbList<PostData> createRepeated() => new $pb.PbList<PostData>();
  static PostData getDefault() => _defaultInstance ??= create()..freeze();
  static PostData _defaultInstance;
  static void $checkItem(PostData v) {
    if (v is! PostData) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  String get location => $_getS(1, '');
  set location(String v) { $_setString(1, v); }
  bool hasLocation() => $_has(1);
  void clearLocation() => clearField(2);

  List<int> get data => $_getN(2);
  set data(List<int> v) { $_setBytes(2, v); }
  bool hasData() => $_has(2);
  void clearData() => clearField(4);
}

class PostIdUserId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PostIdUserId')
    ..aOS(1, 'postId')
    ..aOS(2, 'userId')
    ..hasRequiredFields = false
  ;

  PostIdUserId() : super();
  PostIdUserId.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PostIdUserId.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PostIdUserId clone() => new PostIdUserId()..mergeFromMessage(this);
  PostIdUserId copyWith(void Function(PostIdUserId) updates) => super.copyWith((message) => updates(message as PostIdUserId));
  $pb.BuilderInfo get info_ => _i;
  static PostIdUserId create() => new PostIdUserId();
  PostIdUserId createEmptyInstance() => create();
  static $pb.PbList<PostIdUserId> createRepeated() => new $pb.PbList<PostIdUserId>();
  static PostIdUserId getDefault() => _defaultInstance ??= create()..freeze();
  static PostIdUserId _defaultInstance;
  static void $checkItem(PostIdUserId v) {
    if (v is! PostIdUserId) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get postId => $_getS(0, '');
  set postId(String v) { $_setString(0, v); }
  bool hasPostId() => $_has(0);
  void clearPostId() => clearField(1);

  String get userId => $_getS(1, '');
  set userId(String v) { $_setString(1, v); }
  bool hasUserId() => $_has(1);
  void clearUserId() => clearField(2);
}

class MediaUrl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('MediaUrl')
    ..aOS(1, 'mediaUrl')
    ..hasRequiredFields = false
  ;

  MediaUrl() : super();
  MediaUrl.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  MediaUrl.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  MediaUrl clone() => new MediaUrl()..mergeFromMessage(this);
  MediaUrl copyWith(void Function(MediaUrl) updates) => super.copyWith((message) => updates(message as MediaUrl));
  $pb.BuilderInfo get info_ => _i;
  static MediaUrl create() => new MediaUrl();
  MediaUrl createEmptyInstance() => create();
  static $pb.PbList<MediaUrl> createRepeated() => new $pb.PbList<MediaUrl>();
  static MediaUrl getDefault() => _defaultInstance ??= create()..freeze();
  static MediaUrl _defaultInstance;
  static void $checkItem(MediaUrl v) {
    if (v is! MediaUrl) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get mediaUrl => $_getS(0, '');
  set mediaUrl(String v) { $_setString(0, v); }
  bool hasMediaUrl() => $_has(0);
  void clearMediaUrl() => clearField(1);
}

class LikeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LikeRequest')
    ..aOS(1, 'postId')
    ..aOS(2, 'userId')
    ..aOB(3, 'isLiked')
    ..hasRequiredFields = false
  ;

  LikeRequest() : super();
  LikeRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LikeRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LikeRequest clone() => new LikeRequest()..mergeFromMessage(this);
  LikeRequest copyWith(void Function(LikeRequest) updates) => super.copyWith((message) => updates(message as LikeRequest));
  $pb.BuilderInfo get info_ => _i;
  static LikeRequest create() => new LikeRequest();
  LikeRequest createEmptyInstance() => create();
  static $pb.PbList<LikeRequest> createRepeated() => new $pb.PbList<LikeRequest>();
  static LikeRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LikeRequest _defaultInstance;
  static void $checkItem(LikeRequest v) {
    if (v is! LikeRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get postId => $_getS(0, '');
  set postId(String v) { $_setString(0, v); }
  bool hasPostId() => $_has(0);
  void clearPostId() => clearField(1);

  String get userId => $_getS(1, '');
  set userId(String v) { $_setString(1, v); }
  bool hasUserId() => $_has(1);
  void clearUserId() => clearField(2);

  bool get isLiked => $_get(2, false);
  set isLiked(bool v) { $_setBool(2, v); }
  bool hasIsLiked() => $_has(2);
  void clearIsLiked() => clearField(3);
}

class ProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ProfileRequest')
    ..a<Profile>(1, 'profile', $pb.PbFieldType.OM, Profile.getDefault, Profile.create)
    ..aOB(2, 'autocreate')
    ..hasRequiredFields = false
  ;

  ProfileRequest() : super();
  ProfileRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProfileRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProfileRequest clone() => new ProfileRequest()..mergeFromMessage(this);
  ProfileRequest copyWith(void Function(ProfileRequest) updates) => super.copyWith((message) => updates(message as ProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  static ProfileRequest create() => new ProfileRequest();
  ProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ProfileRequest> createRepeated() => new $pb.PbList<ProfileRequest>();
  static ProfileRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ProfileRequest _defaultInstance;
  static void $checkItem(ProfileRequest v) {
    if (v is! ProfileRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Profile get profile => $_getN(0);
  set profile(Profile v) { setField(1, v); }
  bool hasProfile() => $_has(0);
  void clearProfile() => clearField(1);

  bool get autocreate => $_get(1, false);
  set autocreate(bool v) { $_setBool(1, v); }
  bool hasAutocreate() => $_has(1);
  void clearAutocreate() => clearField(2);
}

class FollowRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FollowRequest')
    ..aOS(1, 'userId1')
    ..aOS(2, 'userId2')
    ..aOB(3, 'isFollowing')
    ..hasRequiredFields = false
  ;

  FollowRequest() : super();
  FollowRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FollowRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FollowRequest clone() => new FollowRequest()..mergeFromMessage(this);
  FollowRequest copyWith(void Function(FollowRequest) updates) => super.copyWith((message) => updates(message as FollowRequest));
  $pb.BuilderInfo get info_ => _i;
  static FollowRequest create() => new FollowRequest();
  FollowRequest createEmptyInstance() => create();
  static $pb.PbList<FollowRequest> createRepeated() => new $pb.PbList<FollowRequest>();
  static FollowRequest getDefault() => _defaultInstance ??= create()..freeze();
  static FollowRequest _defaultInstance;
  static void $checkItem(FollowRequest v) {
    if (v is! FollowRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId1 => $_getS(0, '');
  set userId1(String v) { $_setString(0, v); }
  bool hasUserId1() => $_has(0);
  void clearUserId1() => clearField(1);

  String get userId2 => $_getS(1, '');
  set userId2(String v) { $_setString(1, v); }
  bool hasUserId2() => $_has(1);
  void clearUserId2() => clearField(2);

  bool get isFollowing => $_get(2, false);
  set isFollowing(bool v) { $_setBool(2, v); }
  bool hasIsFollowing() => $_has(2);
  void clearIsFollowing() => clearField(3);
}

