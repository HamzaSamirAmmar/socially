import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../domain/entities/post.dart';
import '../../state_m/stories_cubit/stories_cubit.dart';
import '../error_view.dart';
import 'story_item.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: BlocBuilder<StoriesCubit, StoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            storiesLoading: () => _buildLoadingList(context),
            storiesLoaded:
                (stories) =>
                    stories.isEmpty
                        ? const SizedBox.shrink()
                        : _buildStoriesList(stories, context),
            error:
                (error, callback) => ErrorView(error: error, onRetry: callback),
          );
        },
      ),
    );
  }

  Widget _buildLoadingList(BuildContext context) {
    return _buildStoriesContainer(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder:
            (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.withAlpha(20),
                highlightColor: Colors.grey.withAlpha(20),
                child: Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
      ),
      context: context,
    );
  }

  Widget _buildStoriesList(List<Post> stories, BuildContext context) {
    return _buildStoriesContainer(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        separatorBuilder: (context, index) => SizedBox(width: 15.w),
        itemBuilder: (context, index) => StoryListItem(story: stories[index]),
      ),
      context: context,
    );
  }

  Widget _buildStoriesContainer({
    required Widget child,
    required BuildContext context,
  }) {
    return Container(
      height: 80.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48.r),
        color: Theme.of(context).colorScheme.secondary.withAlpha(9),
      ),
      child: child,
    );
  }
}
