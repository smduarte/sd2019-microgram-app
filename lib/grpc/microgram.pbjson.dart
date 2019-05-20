///
//  Generated code. Do not modify.
//  source: microgram.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'fullName', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'photoUrl', '3': 3, '4': 1, '5': 9, '10': 'photoUrl'},
    const {'1': 'posts', '3': 4, '4': 1, '5': 5, '10': 'posts'},
    const {'1': 'following', '3': 5, '4': 1, '5': 5, '10': 'following'},
    const {'1': 'followers', '3': 6, '4': 1, '5': 5, '10': 'followers'},
  ],
};

const ProfileQuery$json = const {
  '1': 'ProfileQuery',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'exact', '3': 2, '4': 1, '5': 8, '10': 'exact'},
  ],
};

const UserId$json = const {
  '1': 'UserId',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const UserPair$json = const {
  '1': 'UserPair',
  '2': const [
    const {'1': 'userId1', '3': 1, '4': 1, '5': 9, '10': 'userId1'},
    const {'1': 'userId2', '3': 2, '4': 1, '5': 9, '10': 'userId2'},
  ],
};

const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'postId', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    const {'1': 'ownerId', '3': 2, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'mediaUrl', '3': 3, '4': 1, '5': 9, '10': 'mediaUrl'},
    const {'1': 'location', '3': 4, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'likes', '3': 6, '4': 1, '5': 5, '10': 'likes'},
  ],
};

const PostId$json = const {
  '1': 'PostId',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

const BoolResult$json = const {
  '1': 'BoolResult',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 8, '10': 'value'},
  ],
};

const PostData$json = const {
  '1': 'PostData',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'location', '3': 2, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'data', '3': 4, '4': 1, '5': 12, '10': 'data'},
  ],
};

const PostIdUserId$json = const {
  '1': 'PostIdUserId',
  '2': const [
    const {'1': 'postId', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const MediaUrl$json = const {
  '1': 'MediaUrl',
  '2': const [
    const {'1': 'mediaUrl', '3': 1, '4': 1, '5': 9, '10': 'mediaUrl'},
  ],
};

const LikeRequest$json = const {
  '1': 'LikeRequest',
  '2': const [
    const {'1': 'postId', '3': 1, '4': 1, '5': 9, '10': 'postId'},
    const {'1': 'userId', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'isLiked', '3': 3, '4': 1, '5': 8, '10': 'isLiked'},
  ],
};

const ProfileRequest$json = const {
  '1': 'ProfileRequest',
  '2': const [
    const {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.Profile', '10': 'profile'},
    const {'1': 'autocreate', '3': 2, '4': 1, '5': 8, '10': 'autocreate'},
  ],
};

const FollowRequest$json = const {
  '1': 'FollowRequest',
  '2': const [
    const {'1': 'userId1', '3': 1, '4': 1, '5': 9, '10': 'userId1'},
    const {'1': 'userId2', '3': 2, '4': 1, '5': 9, '10': 'userId2'},
    const {'1': 'isFollowing', '3': 3, '4': 1, '5': 8, '10': 'isFollowing'},
  ],
};

