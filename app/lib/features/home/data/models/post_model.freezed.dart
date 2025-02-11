// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostModel {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  UserModel get users => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_type')
  PostType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_style')
  MediaStyle get style => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<PostMediaModel> get postmedia => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  List<LikeModel> get likes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {int id,
      String content,
      UserModel users,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'post_type') PostType type,
      @JsonKey(name: 'media_style') MediaStyle style,
      List<String> tags,
      List<PostMediaModel> postmedia,
      List<CommentModel> comments,
      List<LikeModel> likes});

  $UserModelCopyWith<$Res> get users;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? users = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? type = null,
    Object? style = null,
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
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MediaStyle,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postmedia: null == postmedia
          ? _value.postmedia
          : postmedia // ignore: cast_nullable_to_non_nullable
              as List<PostMediaModel>,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<LikeModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get users {
    return $UserModelCopyWith<$Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      UserModel users,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'post_type') PostType type,
      @JsonKey(name: 'media_style') MediaStyle style,
      List<String> tags,
      List<PostMediaModel> postmedia,
      List<CommentModel> comments,
      List<LikeModel> likes});

  @override
  $UserModelCopyWith<$Res> get users;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? users = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? type = null,
    Object? style = null,
    Object? tags = null,
    Object? postmedia = null,
    Object? comments = null,
    Object? likes = null,
  }) {
    return _then(_$PostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as MediaStyle,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postmedia: null == postmedia
          ? _value._postmedia
          : postmedia // ignore: cast_nullable_to_non_nullable
              as List<PostMediaModel>,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<LikeModel>,
    ));
  }
}

/// @nodoc

class _$PostModelImpl extends _PostModel {
  const _$PostModelImpl(
      {required this.id,
      required this.content,
      required this.users,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'post_type') required this.type,
      @JsonKey(name: 'media_style') required this.style,
      final List<String> tags = const [],
      final List<PostMediaModel> postmedia = const [],
      final List<CommentModel> comments = const [],
      final List<LikeModel> likes = const []})
      : _tags = tags,
        _postmedia = postmedia,
        _comments = comments,
        _likes = likes,
        super._();

  @override
  final int id;
  @override
  final String content;
  @override
  final UserModel users;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'post_type')
  final PostType type;
  @override
  @JsonKey(name: 'media_style')
  final MediaStyle style;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<PostMediaModel> _postmedia;
  @override
  @JsonKey()
  List<PostMediaModel> get postmedia {
    if (_postmedia is EqualUnmodifiableListView) return _postmedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postmedia);
  }

  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<LikeModel> _likes;
  @override
  @JsonKey()
  List<LikeModel> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'PostModel(id: $id, content: $content, users: $users, userId: $userId, createdAt: $createdAt, type: $type, style: $style, tags: $tags, postmedia: $postmedia, comments: $comments, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.style, style) || other.style == style) &&
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
      users,
      userId,
      createdAt,
      type,
      style,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_postmedia),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);
}

abstract class _PostModel extends PostModel {
  const factory _PostModel(
      {required final int id,
      required final String content,
      required final UserModel users,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'post_type') required final PostType type,
      @JsonKey(name: 'media_style') required final MediaStyle style,
      final List<String> tags,
      final List<PostMediaModel> postmedia,
      final List<CommentModel> comments,
      final List<LikeModel> likes}) = _$PostModelImpl;
  const _PostModel._() : super._();

  @override
  int get id;
  @override
  String get content;
  @override
  UserModel get users;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'post_type')
  PostType get type;
  @override
  @JsonKey(name: 'media_style')
  MediaStyle get style;
  @override
  List<String> get tags;
  @override
  List<PostMediaModel> get postmedia;
  @override
  List<CommentModel> get comments;
  @override
  List<LikeModel> get likes;
  @override
  @JsonKey(ignore: true)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
