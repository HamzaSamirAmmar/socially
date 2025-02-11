// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  PostType get type => throw _privateConstructorUsedError;
  MediaStyle get style => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<PostMedia> get postmedia => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  List<Like> get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String content,
      int userId,
      User user,
      PostType type,
      MediaStyle style,
      DateTime createdAt,
      List<String> tags,
      List<PostMedia> postmedia,
      List<Comment> comments,
      List<Like> likes});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? userId = null,
    Object? user = null,
    Object? type = null,
    Object? style = null,
    Object? createdAt = null,
    Object? tags = null,
    Object? postmedia = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MediaStyle,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postmedia: null == postmedia
          ? _value.postmedia
          : postmedia // ignore: cast_nullable_to_non_nullable
              as List<PostMedia>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      int userId,
      User user,
      PostType type,
      MediaStyle style,
      DateTime createdAt,
      List<String> tags,
      List<PostMedia> postmedia,
      List<Comment> comments,
      List<Like> likes});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? userId = null,
    Object? user = null,
    Object? type = null,
    Object? style = null,
    Object? createdAt = null,
    Object? tags = null,
    Object? postmedia = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MediaStyle,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postmedia: null == postmedia
          ? _value._postmedia
          : postmedia // ignore: cast_nullable_to_non_nullable
              as List<PostMedia>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>,
    ));
  }
}

/// @nodoc

class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.id,
      required this.content,
      required this.userId,
      required this.user,
      required this.type,
      required this.style,
      required this.createdAt,
      final List<String> tags = const [],
      final List<PostMedia> postmedia = const [],
      final List<Comment> comments = const [],
      final List<Like> likes = const []})
      : _tags = tags,
        _postmedia = postmedia,
        _comments = comments,
        _likes = likes;

  @override
  final int id;
  @override
  final String content;
  @override
  final int userId;
  @override
  final User user;
  @override
  final PostType type;
  @override
  final MediaStyle style;
  @override
  final DateTime createdAt;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<PostMedia> _postmedia;
  @override
  @JsonKey()
  List<PostMedia> get postmedia {
    if (_postmedia is EqualUnmodifiableListView) return _postmedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postmedia);
  }

  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<Like> _likes;
  @override
  @JsonKey()
  List<Like> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'Post(id: $id, content: $content, userId: $userId, user: $user, type: $type, style: $style, createdAt: $createdAt, tags: $tags, postmedia: $postmedia, comments: $comments, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._postmedia, _postmedia) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      userId,
      user,
      type,
      style,
      createdAt,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_postmedia),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);
}

abstract class _Post implements Post {
  const factory _Post(
      {required final int id,
      required final String content,
      required final int userId,
      required final User user,
      required final PostType type,
      required final MediaStyle style,
      required final DateTime createdAt,
      final List<String> tags,
      final List<PostMedia> postmedia,
      final List<Comment> comments,
      final List<Like> likes}) = _$PostImpl;

  @override
  int get id;
  @override
  String get content;
  @override
  int get userId;
  @override
  User get user;
  @override
  PostType get type;
  @override
  MediaStyle get style;
  @override
  DateTime get createdAt;
  @override
  List<String> get tags;
  @override
  List<PostMedia> get postmedia;
  @override
  List<Comment> get comments;
  @override
  List<Like> get likes;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
