part of 'posts_cubit.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = PostsInitialState;

  const factory PostsState.error({
    required String error,
    required VoidCallback callback,
  }) = PostsErrorState;

  const factory PostsState.postsLoading() = PostsLoadingState;

  const factory PostsState.postsLoaded({required List<Post> posts}) =
      PostsLoadedState;
}
