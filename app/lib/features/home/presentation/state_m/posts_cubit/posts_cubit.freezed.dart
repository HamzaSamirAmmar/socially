// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsErrorState value) error,
    required TResult Function(PostsLoadingState value) postsLoading,
    required TResult Function(PostsLoadedState value) postsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsErrorState value)? error,
    TResult? Function(PostsLoadingState value)? postsLoading,
    TResult? Function(PostsLoadedState value)? postsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsErrorState value)? error,
    TResult Function(PostsLoadingState value)? postsLoading,
    TResult Function(PostsLoadedState value)? postsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostsInitialStateImplCopyWith<$Res> {
  factory _$$PostsInitialStateImplCopyWith(_$PostsInitialStateImpl value,
          $Res Function(_$PostsInitialStateImpl) then) =
      __$$PostsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsInitialStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsInitialStateImpl>
    implements _$$PostsInitialStateImplCopyWith<$Res> {
  __$$PostsInitialStateImplCopyWithImpl(_$PostsInitialStateImpl _value,
      $Res Function(_$PostsInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostsInitialStateImpl implements PostsInitialState {
  const _$PostsInitialStateImpl();

  @override
  String toString() {
    return 'PostsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsErrorState value) error,
    required TResult Function(PostsLoadingState value) postsLoading,
    required TResult Function(PostsLoadedState value) postsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsErrorState value)? error,
    TResult? Function(PostsLoadingState value)? postsLoading,
    TResult? Function(PostsLoadedState value)? postsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsErrorState value)? error,
    TResult Function(PostsLoadingState value)? postsLoading,
    TResult Function(PostsLoadedState value)? postsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostsInitialState implements PostsState {
  const factory PostsInitialState() = _$PostsInitialStateImpl;
}

/// @nodoc
abstract class _$$PostsErrorStateImplCopyWith<$Res> {
  factory _$$PostsErrorStateImplCopyWith(_$PostsErrorStateImpl value,
          $Res Function(_$PostsErrorStateImpl) then) =
      __$$PostsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, VoidCallback callback});
}

/// @nodoc
class __$$PostsErrorStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsErrorStateImpl>
    implements _$$PostsErrorStateImplCopyWith<$Res> {
  __$$PostsErrorStateImplCopyWithImpl(
      _$PostsErrorStateImpl _value, $Res Function(_$PostsErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? callback = null,
  }) {
    return _then(_$PostsErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$PostsErrorStateImpl implements PostsErrorState {
  const _$PostsErrorStateImpl({required this.error, required this.callback});

  @override
  final String error;
  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'PostsState.error(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsErrorStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsErrorStateImplCopyWith<_$PostsErrorStateImpl> get copyWith =>
      __$$PostsErrorStateImplCopyWithImpl<_$PostsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
  }) {
    return error(this.error, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
  }) {
    return error?.call(this.error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsErrorState value) error,
    required TResult Function(PostsLoadingState value) postsLoading,
    required TResult Function(PostsLoadedState value) postsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsErrorState value)? error,
    TResult? Function(PostsLoadingState value)? postsLoading,
    TResult? Function(PostsLoadedState value)? postsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsErrorState value)? error,
    TResult Function(PostsLoadingState value)? postsLoading,
    TResult Function(PostsLoadedState value)? postsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostsErrorState implements PostsState {
  const factory PostsErrorState(
      {required final String error,
      required final VoidCallback callback}) = _$PostsErrorStateImpl;

  String get error;
  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$PostsErrorStateImplCopyWith<_$PostsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostsLoadingStateImplCopyWith<$Res> {
  factory _$$PostsLoadingStateImplCopyWith(_$PostsLoadingStateImpl value,
          $Res Function(_$PostsLoadingStateImpl) then) =
      __$$PostsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsLoadingStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsLoadingStateImpl>
    implements _$$PostsLoadingStateImplCopyWith<$Res> {
  __$$PostsLoadingStateImplCopyWithImpl(_$PostsLoadingStateImpl _value,
      $Res Function(_$PostsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostsLoadingStateImpl implements PostsLoadingState {
  const _$PostsLoadingStateImpl();

  @override
  String toString() {
    return 'PostsState.postsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
  }) {
    return postsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
  }) {
    return postsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    required TResult orElse(),
  }) {
    if (postsLoading != null) {
      return postsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsErrorState value) error,
    required TResult Function(PostsLoadingState value) postsLoading,
    required TResult Function(PostsLoadedState value) postsLoaded,
  }) {
    return postsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsErrorState value)? error,
    TResult? Function(PostsLoadingState value)? postsLoading,
    TResult? Function(PostsLoadedState value)? postsLoaded,
  }) {
    return postsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsErrorState value)? error,
    TResult Function(PostsLoadingState value)? postsLoading,
    TResult Function(PostsLoadedState value)? postsLoaded,
    required TResult orElse(),
  }) {
    if (postsLoading != null) {
      return postsLoading(this);
    }
    return orElse();
  }
}

abstract class PostsLoadingState implements PostsState {
  const factory PostsLoadingState() = _$PostsLoadingStateImpl;
}

/// @nodoc
abstract class _$$PostsLoadedStateImplCopyWith<$Res> {
  factory _$$PostsLoadedStateImplCopyWith(_$PostsLoadedStateImpl value,
          $Res Function(_$PostsLoadedStateImpl) then) =
      __$$PostsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$PostsLoadedStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsLoadedStateImpl>
    implements _$$PostsLoadedStateImplCopyWith<$Res> {
  __$$PostsLoadedStateImplCopyWithImpl(_$PostsLoadedStateImpl _value,
      $Res Function(_$PostsLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostsLoadedStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostsLoadedStateImpl implements PostsLoadedState {
  const _$PostsLoadedStateImpl({required final List<Post> posts})
      : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.postsLoaded(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsLoadedStateImplCopyWith<_$PostsLoadedStateImpl> get copyWith =>
      __$$PostsLoadedStateImplCopyWithImpl<_$PostsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
  }) {
    return postsLoaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
  }) {
    return postsLoaded?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsErrorState value) error,
    required TResult Function(PostsLoadingState value) postsLoading,
    required TResult Function(PostsLoadedState value) postsLoaded,
  }) {
    return postsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsInitialState value)? initial,
    TResult? Function(PostsErrorState value)? error,
    TResult? Function(PostsLoadingState value)? postsLoading,
    TResult? Function(PostsLoadedState value)? postsLoaded,
  }) {
    return postsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsErrorState value)? error,
    TResult Function(PostsLoadingState value)? postsLoading,
    TResult Function(PostsLoadedState value)? postsLoaded,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(this);
    }
    return orElse();
  }
}

abstract class PostsLoadedState implements PostsState {
  const factory PostsLoadedState({required final List<Post> posts}) =
      _$PostsLoadedStateImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$PostsLoadedStateImplCopyWith<_$PostsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
