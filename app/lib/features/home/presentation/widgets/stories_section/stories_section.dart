import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            storiesLoading:
                () => const Center(child: CircularProgressIndicator()),
            storiesLoaded:
                (stories) =>
                    stories.isEmpty
                        ? const SizedBox.shrink()
                        : Container(
                          height: 80.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48.r),
                            color: Theme.of(
                              context,
                            ).colorScheme.secondary.withAlpha(9),
                          ),
                          child: ListView.separated(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            scrollDirection: Axis.horizontal,
                            itemCount: stories.length,
                            separatorBuilder:
                                (context, index) => SizedBox(width: 15.w),
                            itemBuilder:
                                (context, index) =>
                                    StoryListItem(story: stories[index]),
                          ),
                        ),
            error:
                (error, callback) => ErrorView(error: error, onRetry: callback),
          );
        },
      ),
    );
  }
}
