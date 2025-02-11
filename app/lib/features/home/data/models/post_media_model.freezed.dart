// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostMediaModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  MediaType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostMediaModelCopyWith<PostMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostMediaModelCopyWith<$Res> {
  factory $PostMediaModelCopyWith(
          PostMediaModel value, $Res Function(PostMediaModel) then) =
      _$PostMediaModelCopyWithImpl<$Res, PostMediaModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'media_url') String url,
      @JsonKey(name: 'media_type') MediaType type,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$PostMediaModelCopyWithImpl<$Res, $Val extends PostMediaModel>
    implements $PostMediaModelCopyWith<$Res> {
  _$PostMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? type = null,
    Object? postId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostMediaModelImplCopyWith<$Res>
    implements $PostMediaModelCopyWith<$Res> {
  factory _$$PostMediaModelImplCopyWith(_$PostMediaModelImpl value,
          $Res Function(_$PostMediaModelImpl) then) =
      __$$PostMediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'media_url') String url,
      @JsonKey(name: 'media_type') MediaType type,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$PostMediaModelImplCopyWithImpl<$Res>
    extends _$PostMediaModelCopyWithImpl<$Res, _$PostMediaModelImpl>
    implements _$$PostMediaModelImplCopyWith<$Res> {
  __$$PostMediaModelImplCopyWithImpl(
      _$PostMediaModelImpl _value, $Res Function(_$PostMediaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? type = null,
    Object? postId = null,
    Object? createdAt = null,
  }) {
    return _then(_$PostMediaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PostMediaModelImpl extends _PostMediaModel {
  const _$PostMediaModelImpl(
      {required this.id,
      @JsonKey(name: 'media_url') required this.url,
      @JsonKey(name: 'media_type') required this.type,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  @override
  final int id;
  @override
  @JsonKey(name: 'media_url')
  final String url;
  @override
  @JsonKey(name: 'media_type')
  final MediaType type;
  @override
  @JsonKey(name: 'post_id')
  final int postId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'PostMediaModel(id: $id, url: $url, type: $type, postId: $postId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostMediaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, type, postId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostMediaModelImplCopyWith<_$PostMediaModelImpl> get copyWith =>
      __$$PostMediaModelImplCopyWithImpl<_$PostMediaModelImpl>(
          this, _$identity);
}

abstract class _PostMediaModel extends PostMediaModel {
  const factory _PostMediaModel(
          {required final int id,
          @JsonKey(name: 'media_url') required final String url,
          @JsonKey(name: 'media_type') required final MediaType type,
          @JsonKey(name: 'post_id') required final int postId,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$PostMediaModelImpl;
  const _PostMediaModel._() : super._();

  @override
  int get id;
  @override
  @JsonKey(name: 'media_url')
  String get url;
  @override
  @JsonKey(name: 'media_type')
  MediaType get type;
  @override
  @JsonKey(name: 'post_id')
  int get postId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostMediaModelImplCopyWith<_$PostMediaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
