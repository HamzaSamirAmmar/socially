import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../domain/entities/post.dart';
import '../../../domain/usecases/fetch_posts_usecase.dart';

part 'posts_cubit.freezed.dart';
part 'posts_state.dart';

@injectable
class PostsCubit extends Cubit<PostsState> {
  final FetchPostsUsecase _fetchPostsUsecase;

  PostsCubit(this._fetchPostsUsecase) : super(const PostsState.initial());

  Future<void> fetchPosts() async {
    emit(const PostsState.postsLoading());
    final result = await _fetchPostsUsecase(NoParams());
    result.fold(
      (failure) => emit(
        PostsState.error(error: failure.message, callback: () => fetchPosts()),
      ),
      (posts) => emit(PostsState.postsLoaded(posts: posts)),
    );
  }
}
