// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() storiesLoading,
    required TResult Function(List<Post> stories) storiesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Post> stories)? storiesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? storiesLoading,
    TResult Function(List<Post> stories)? storiesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesInitialState value) initial,
    required TResult Function(StoriesErrorState value) error,
    required TResult Function(StoriesLoadingState value) storiesLoading,
    required TResult Function(StoriesLoadedState value) storiesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesInitialState value)? initial,
    TResult? Function(StoriesErrorState value)? error,
    TResult? Function(StoriesLoadingState value)? storiesLoading,
    TResult? Function(StoriesLoadedState value)? storiesLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesInitialState value)? initial,
    TResult Function(StoriesErrorState value)? error,
    TResult Function(StoriesLoadingState value)? storiesLoading,
    TResult Function(StoriesLoadedState value)? storiesLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoriesInitialStateImplCopyWith<$Res> {
  factory _$$StoriesInitialStateImplCopyWith(_$StoriesInitialStateImpl value,
          $Res Function(_$StoriesInitialStateImpl) then) =
      __$$StoriesInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesInitialStateImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesInitialStateImpl>
    implements _$$StoriesInitialStateImplCopyWith<$Res> {
  __$$StoriesInitialStateImplCopyWithImpl(_$StoriesInitialStateImpl _value,
      $Res Function(_$StoriesInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesInitialStateImpl implements StoriesInitialState {
  const _$StoriesInitialStateImpl();

  @override
  String toString() {
    return 'StoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() storiesLoading,
    required TResult Function(List<Post> stories) storiesLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Post> stories)? storiesLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? storiesLoading,
    TResult Function(List<Post> stories)? storiesLoaded,
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
    required TResult Function(StoriesInitialState value) initial,
    required TResult Function(StoriesErrorState value) error,
    required TResult Function(StoriesLoadingState value) storiesLoading,
    required TResult Function(StoriesLoadedState value) storiesLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesInitialState value)? initial,
    TResult? Function(StoriesErrorState value)? error,
    TResult? Function(StoriesLoadingState value)? storiesLoading,
    TResult? Function(StoriesLoadedState value)? storiesLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesInitialState value)? initial,
    TResult Function(StoriesErrorState value)? error,
    TResult Function(StoriesLoadingState value)? storiesLoading,
    TResult Function(StoriesLoadedState value)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StoriesInitialState implements StoriesState {
  const factory StoriesInitialState() = _$StoriesInitialStateImpl;
}

/// @nodoc
abstract class _$$StoriesErrorStateImplCopyWith<$Res> {
  factory _$$StoriesErrorStateImplCopyWith(_$StoriesErrorStateImpl value,
          $Res Function(_$StoriesErrorStateImpl) then) =
      __$$StoriesErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, VoidCallback callback});
}

/// @nodoc
class __$$StoriesErrorStateImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesErrorStateImpl>
    implements _$$StoriesErrorStateImplCopyWith<$Res> {
  __$$StoriesErrorStateImplCopyWithImpl(_$StoriesErrorStateImpl _value,
      $Res Function(_$StoriesErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? callback = null,
  }) {
    return _then(_$StoriesErrorStateImpl(
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

class _$StoriesErrorStateImpl implements StoriesErrorState {
  const _$StoriesErrorStateImpl({required this.error, required this.callback});

  @override
  final String error;
  @override
  final VoidCallback callback;

  @override
  String toString() {
    return 'StoriesState.error(error: $error, callback: $callback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesErrorStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesErrorStateImplCopyWith<_$StoriesErrorStateImpl> get copyWith =>
      __$$StoriesErrorStateImplCopyWithImpl<_$StoriesErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() storiesLoading,
    required TResult Function(List<Post> stories) storiesLoaded,
  }) {
    return error(this.error, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Post> stories)? storiesLoaded,
  }) {
    return error?.call(this.error, callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? storiesLoading,
    TResult Function(List<Post> stories)? storiesLoaded,
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
    required TResult Function(StoriesInitialState value) initial,
    required TResult Function(StoriesErrorState value) error,
    required TResult Function(StoriesLoadingState value) storiesLoading,
    required TResult Function(StoriesLoadedState value) storiesLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesInitialState value)? initial,
    TResult? Function(StoriesErrorState value)? error,
    TResult? Function(StoriesLoadingState value)? storiesLoading,
    TResult? Function(StoriesLoadedState value)? storiesLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesInitialState value)? initial,
    TResult Function(StoriesErrorState value)? error,
    TResult Function(StoriesLoadingState value)? storiesLoading,
    TResult Function(StoriesLoadedState value)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoriesErrorState implements StoriesState {
  const factory StoriesErrorState(
      {required final String error,
      required final VoidCallback callback}) = _$StoriesErrorStateImpl;

  String get error;
  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$StoriesErrorStateImplCopyWith<_$StoriesErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesLoadingStateImplCopyWith<$Res> {
  factory _$$StoriesLoadingStateImplCopyWith(_$StoriesLoadingStateImpl value,
          $Res Function(_$StoriesLoadingStateImpl) then) =
      __$$StoriesLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesLoadingStateImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesLoadingStateImpl>
    implements _$$StoriesLoadingStateImplCopyWith<$Res> {
  __$$StoriesLoadingStateImplCopyWithImpl(_$StoriesLoadingStateImpl _value,
      $Res Function(_$StoriesLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesLoadingStateImpl implements StoriesLoadingState {
  const _$StoriesLoadingStateImpl();

  @override
  String toString() {
    return 'StoriesState.storiesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() storiesLoading,
    required TResult Function(List<Post> stories) storiesLoaded,
  }) {
    return storiesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Post> stories)? storiesLoaded,
  }) {
    return storiesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? storiesLoading,
    TResult Function(List<Post> stories)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (storiesLoading != null) {
      return storiesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesInitialState value) initial,
    required TResult Function(StoriesErrorState value) error,
    required TResult Function(StoriesLoadingState value) storiesLoading,
    required TResult Function(StoriesLoadedState value) storiesLoaded,
  }) {
    return storiesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesInitialState value)? initial,
    TResult? Function(StoriesErrorState value)? error,
    TResult? Function(StoriesLoadingState value)? storiesLoading,
    TResult? Function(StoriesLoadedState value)? storiesLoaded,
  }) {
    return storiesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesInitialState value)? initial,
    TResult Function(StoriesErrorState value)? error,
    TResult Function(StoriesLoadingState value)? storiesLoading,
    TResult Function(StoriesLoadedState value)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (storiesLoading != null) {
      return storiesLoading(this);
    }
    return orElse();
  }
}

abstract class StoriesLoadingState implements StoriesState {
  const factory StoriesLoadingState() = _$StoriesLoadingStateImpl;
}

/// @nodoc
abstract class _$$StoriesLoadedStateImplCopyWith<$Res> {
  factory _$$StoriesLoadedStateImplCopyWith(_$StoriesLoadedStateImpl value,
          $Res Function(_$StoriesLoadedStateImpl) then) =
      __$$StoriesLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> stories});
}

/// @nodoc
class __$$StoriesLoadedStateImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesLoadedStateImpl>
    implements _$$StoriesLoadedStateImplCopyWith<$Res> {
  __$$StoriesLoadedStateImplCopyWithImpl(_$StoriesLoadedStateImpl _value,
      $Res Function(_$StoriesLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$StoriesLoadedStateImpl(
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$StoriesLoadedStateImpl implements StoriesLoadedState {
  const _$StoriesLoadedStateImpl({required final List<Post> stories})
      : _stories = stories;

  final List<Post> _stories;
  @override
  List<Post> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'StoriesState.storiesLoaded(stories: $stories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesLoadedStateImplCopyWith<_$StoriesLoadedStateImpl> get copyWith =>
      __$$StoriesLoadedStateImplCopyWithImpl<_$StoriesLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error, VoidCallback callback) error,
    required TResult Function() storiesLoading,
    required TResult Function(List<Post> stories) storiesLoaded,
  }) {
    return storiesLoaded(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error, VoidCallback callback)? error,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Post> stories)? storiesLoaded,
  }) {
    return storiesLoaded?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error, VoidCallback callback)? error,
    TResult Function()? storiesLoading,
    TResult Function(List<Post> stories)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesInitialState value) initial,
    required TResult Function(StoriesErrorState value) error,
    required TResult Function(StoriesLoadingState value) storiesLoading,
    required TResult Function(StoriesLoadedState value) storiesLoaded,
  }) {
    return storiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesInitialState value)? initial,
    TResult? Function(StoriesErrorState value)? error,
    TResult? Function(StoriesLoadingState value)? storiesLoading,
    TResult? Function(StoriesLoadedState value)? storiesLoaded,
  }) {
    return storiesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesInitialState value)? initial,
    TResult Function(StoriesErrorState value)? error,
    TResult Function(StoriesLoadingState value)? storiesLoading,
    TResult Function(StoriesLoadedState value)? storiesLoaded,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(this);
    }
    return orElse();
  }
}

abstract class StoriesLoadedState implements StoriesState {
  const factory StoriesLoadedState({required final List<Post> stories}) =
      _$StoriesLoadedStateImpl;

  List<Post> get stories;
  @JsonKey(ignore: true)
  _$$StoriesLoadedStateImplCopyWith<_$StoriesLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
