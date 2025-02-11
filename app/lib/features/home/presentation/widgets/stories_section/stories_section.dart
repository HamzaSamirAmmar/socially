import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/post.dart';
import '../../state_m/stories_cubit/stories_cubit.dart';
import '../posts_section/error_view.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoriesCubit, StoriesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          storiesLoading:
              () => const Center(child: CircularProgressIndicator()),
          storiesLoaded:
              (stories) =>
                  stories.isEmpty
                      ? const SizedBox.shrink()
                      : SizedBox(
                        height: 100.h,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length,
                          separatorBuilder:
                              (context, index) => SizedBox(width: 12.w),
                          itemBuilder:
                              (context, index) =>
                                  StoryItem(story: stories[index]),
                        ),
                      ),
          error:
              (error, callback) => ErrorView(error: error, onRetry: callback),
        );
      },
    );
  }
}

class StoryItem extends StatelessWidget {
  final Post story;

  const StoryItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.primary.withOpacity(0.1),
            child: Text(
              story.user.name[0].toUpperCase(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            story.user.name,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
