///
//  Generated code. Do not modify.
//  source: microgram.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart' as $grpc;
import 'microgram.pb.dart';
export 'microgram.pb.dart';

class MicrogramClient extends $grpc.Client {
  static final _$getProfile = new $grpc.ClientMethod<ProfileRequest, Profile>(
      '/Microgram/GetProfile',
      (ProfileRequest value) => value.writeToBuffer(),
      (List<int> value) => new Profile.fromBuffer(value));
  static final _$searchProfiles = new $grpc.ClientMethod<ProfileQuery, Profile>(
      '/Microgram/SearchProfiles',
      (ProfileQuery value) => value.writeToBuffer(),
      (List<int> value) => new Profile.fromBuffer(value));
  static final _$follow = new $grpc.ClientMethod<FollowRequest, BoolResult>(
      '/Microgram/Follow',
      (FollowRequest value) => value.writeToBuffer(),
      (List<int> value) => new BoolResult.fromBuffer(value));
  static final _$isFollowing = new $grpc.ClientMethod<UserPair, BoolResult>(
      '/Microgram/isFollowing',
      (UserPair value) => value.writeToBuffer(),
      (List<int> value) => new BoolResult.fromBuffer(value));
  static final _$getPost = new $grpc.ClientMethod<PostId, Post>(
      '/Microgram/GetPost',
      (PostId value) => value.writeToBuffer(),
      (List<int> value) => new Post.fromBuffer(value));
  static final _$createPost = new $grpc.ClientMethod<PostData, PostId>(
      '/Microgram/CreatePost',
      (PostData value) => value.writeToBuffer(),
      (List<int> value) => new PostId.fromBuffer(value));
  static final _$like = new $grpc.ClientMethod<LikeRequest, BoolResult>(
      '/Microgram/Like',
      (LikeRequest value) => value.writeToBuffer(),
      (List<int> value) => new BoolResult.fromBuffer(value));
  static final _$isLiked = new $grpc.ClientMethod<PostIdUserId, BoolResult>(
      '/Microgram/IsLiked',
      (PostIdUserId value) => value.writeToBuffer(),
      (List<int> value) => new BoolResult.fromBuffer(value));
  static final _$getUserPosts = new $grpc.ClientMethod<UserId, PostId>(
      '/Microgram/GetUserPosts',
      (UserId value) => value.writeToBuffer(),
      (List<int> value) => new PostId.fromBuffer(value));
  static final _$getFeedPosts = new $grpc.ClientMethod<UserId, PostId>(
      '/Microgram/GetFeedPosts',
      (UserId value) => value.writeToBuffer(),
      (List<int> value) => new PostId.fromBuffer(value));

  MicrogramClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<Profile> getProfile(ProfileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getProfile, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<Profile> searchProfiles(ProfileQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchProfiles, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<BoolResult> follow(FollowRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$follow, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BoolResult> isFollowing(UserPair request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$isFollowing, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<Post> getPost(PostId request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPost, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<PostId> createPost(PostData request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createPost, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BoolResult> like(LikeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$like, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<BoolResult> isLiked(PostIdUserId request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$isLiked, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<PostId> getUserPosts(UserId request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getUserPosts, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<PostId> getFeedPosts(UserId request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getFeedPosts, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseStream(call);
  }
}

abstract class MicrogramServiceBase extends $grpc.Service {
  String get $name => 'Microgram';

  MicrogramServiceBase() {
    $addMethod(new $grpc.ServiceMethod<ProfileRequest, Profile>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        (List<int> value) => new ProfileRequest.fromBuffer(value),
        (Profile value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<ProfileQuery, Profile>(
        'SearchProfiles',
        searchProfiles_Pre,
        false,
        true,
        (List<int> value) => new ProfileQuery.fromBuffer(value),
        (Profile value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<FollowRequest, BoolResult>(
        'Follow',
        follow_Pre,
        false,
        false,
        (List<int> value) => new FollowRequest.fromBuffer(value),
        (BoolResult value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UserPair, BoolResult>(
        'isFollowing',
        isFollowing_Pre,
        false,
        false,
        (List<int> value) => new UserPair.fromBuffer(value),
        (BoolResult value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<PostId, Post>(
        'GetPost',
        getPost_Pre,
        false,
        true,
        (List<int> value) => new PostId.fromBuffer(value),
        (Post value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<PostData, PostId>(
        'CreatePost',
        createPost_Pre,
        false,
        false,
        (List<int> value) => new PostData.fromBuffer(value),
        (PostId value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<LikeRequest, BoolResult>(
        'Like',
        like_Pre,
        false,
        false,
        (List<int> value) => new LikeRequest.fromBuffer(value),
        (BoolResult value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<PostIdUserId, BoolResult>(
        'IsLiked',
        isLiked_Pre,
        false,
        false,
        (List<int> value) => new PostIdUserId.fromBuffer(value),
        (BoolResult value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UserId, PostId>(
        'GetUserPosts',
        getUserPosts_Pre,
        false,
        true,
        (List<int> value) => new UserId.fromBuffer(value),
        (PostId value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<UserId, PostId>(
        'GetFeedPosts',
        getFeedPosts_Pre,
        false,
        true,
        (List<int> value) => new UserId.fromBuffer(value),
        (PostId value) => value.writeToBuffer()));
  }

  $async.Future<Profile> getProfile_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return getProfile(call, await request);
  }

  $async.Stream<Profile> searchProfiles_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* searchProfiles(call, (await request) as ProfileQuery);
  }

  $async.Future<BoolResult> follow_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return follow(call, await request);
  }

  $async.Future<BoolResult> isFollowing_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return isFollowing(call, await request);
  }

  $async.Stream<Post> getPost_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getPost(call, (await request) as PostId);
  }

  $async.Future<PostId> createPost_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createPost(call, await request);
  }

  $async.Future<BoolResult> like_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return like(call, await request);
  }

  $async.Future<BoolResult> isLiked_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return isLiked(call, await request);
  }

  $async.Stream<PostId> getUserPosts_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getUserPosts(call, (await request) as UserId);
  }

  $async.Stream<PostId> getFeedPosts_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* getFeedPosts(call, (await request) as UserId);
  }

  $async.Future<Profile> getProfile(
      $grpc.ServiceCall call, ProfileRequest request);
  $async.Stream<Profile> searchProfiles(
      $grpc.ServiceCall call, ProfileQuery request);
  $async.Future<BoolResult> follow(
      $grpc.ServiceCall call, FollowRequest request);
  $async.Future<BoolResult> isFollowing(
      $grpc.ServiceCall call, UserPair request);
  $async.Stream<Post> getPost($grpc.ServiceCall call, PostId request);
  $async.Future<PostId> createPost($grpc.ServiceCall call, PostData request);
  $async.Future<BoolResult> like($grpc.ServiceCall call, LikeRequest request);
  $async.Future<BoolResult> isLiked(
      $grpc.ServiceCall call, PostIdUserId request);
  $async.Stream<PostId> getUserPosts($grpc.ServiceCall call, UserId request);
  $async.Stream<PostId> getFeedPosts($grpc.ServiceCall call, UserId request);
}
