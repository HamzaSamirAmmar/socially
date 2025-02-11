part of 'stories_cubit.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.initial() = StoriesInitialState;

  const factory StoriesState.error({
    required String error,
    required VoidCallback callback,
  }) = StoriesErrorState;

  const factory StoriesState.storiesLoading() = StoriesLoadingState;

  const factory StoriesState.storiesLoaded({required List<Post> stories}) =
      StoriesLoadedState;
}
