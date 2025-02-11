import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../domain/entities/post.dart';
import '../../../domain/usecases/fetch_stories_usecase.dart';

part 'stories_cubit.freezed.dart';
part 'stories_state.dart';

@injectable
class StoriesCubit extends Cubit<StoriesState> {
  final FetchStoriesUsecase _fetchStoriesUsecase;

  StoriesCubit(this._fetchStoriesUsecase) : super(const StoriesState.initial());

  Future<void> fetchStories() async {
    emit(const StoriesState.storiesLoading());
    final result = await _fetchStoriesUsecase(NoParams());
    result.fold(
      (failure) => emit(
        StoriesState.error(
          error: failure.message,
          callback: () => fetchStories(),
        ),
      ),
      (stories) => emit(StoriesState.storiesLoaded(stories: stories)),
    );
  }
}
