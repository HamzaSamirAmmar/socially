// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostMedia {
  int get id => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostMediaCopyWith<PostMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostMediaCopyWith<$Res> {
  factory $PostMediaCopyWith(PostMedia value, $Res Function(PostMedia) then) =
      _$PostMediaCopyWithImpl<$Res, PostMedia>;
  @useResult
  $Res call(
      {int id, int postId, String url, MediaType type, DateTime createdAt});
}

/// @nodoc
class _$PostMediaCopyWithImpl<$Res, $Val extends PostMedia>
    implements $PostMediaCopyWith<$Res> {
  _$PostMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? url = null,
    Object? type = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostMediaImplCopyWith<$Res>
    implements $PostMediaCopyWith<$Res> {
  factory _$$PostMediaImplCopyWith(
          _$PostMediaImpl value, $Res Function(_$PostMediaImpl) then) =
      __$$PostMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int postId, String url, MediaType type, DateTime createdAt});
}

/// @nodoc
class __$$PostMediaImplCopyWithImpl<$Res>
    extends _$PostMediaCopyWithImpl<$Res, _$PostMediaImpl>
    implements _$$PostMediaImplCopyWith<$Res> {
  __$$PostMediaImplCopyWithImpl(
      _$PostMediaImpl _value, $Res Function(_$PostMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? url = null,
    Object? type = null,
    Object? createdAt = null,
  }) {
    return _then(_$PostMediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PostMediaImpl implements _PostMedia {
  const _$PostMediaImpl(
      {required this.id,
      required this.postId,
      required this.url,
      required this.type,
      required this.createdAt});

  @override
  final int id;
  @override
  final int postId;
  @override
  final String url;
  @override
  final MediaType type;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PostMedia(id: $id, postId: $postId, url: $url, type: $type, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, postId, url, type, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostMediaImplCopyWith<_$PostMediaImpl> get copyWith =>
      __$$PostMediaImplCopyWithImpl<_$PostMediaImpl>(this, _$identity);
}

abstract class _PostMedia implements PostMedia {
  const factory _PostMedia(
      {required final int id,
      required final int postId,
      required final String url,
      required final MediaType type,
      required final DateTime createdAt}) = _$PostMediaImpl;

  @override
  int get id;
  @override
  int get postId;
  @override
  String get url;
  @override
  MediaType get type;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostMediaImplCopyWith<_$PostMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
