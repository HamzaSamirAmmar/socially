import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:socially_ui_components/ui_components.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

import '../../../../../core/constants/letter_spacing.dart';
import '../../../../../core/utils/date_time_formatter.dart';

class StoryItemView extends StatefulWidget {
  final List<StoryItem> items;
  final List<DateTime> itemsCreationDate;
  final String username;

  const StoryItemView({
    super.key,
    required this.items,
    required this.username,
    required this.itemsCreationDate,
  });

  @override
  State<StoryItemView> createState() => _StoryItemViewState();
}

class _StoryItemViewState extends State<StoryItemView> {
  final StoryController _storyController = StoryController();
  final ValueNotifier<int> _storyIndexNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _storyController.dispose();
    _storyIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: widget.items,
            controller: _storyController,
            repeat: true,
            onStoryShow: (s, i) {
              _storyIndexNotifier.value = i; 
            },
            onComplete: () {
              // context.pop();
            },
            onVerticalSwipeComplete: (direction) {
              context.pop();
            },
          ),
          Positioned(
            top: 65.h,
            right: 19.w,
            left: 19.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary.withAlpha(70),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: SAsset.back,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      widget.username,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: kLetterSpacing.sp,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    ValueListenableBuilder<int>(
                      valueListenable: _storyIndexNotifier,
                      builder: (context, index, child) {
                        return Text(
                          DateTimeFormatter.timeAgo(widget.itemsCreationDate[index]),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 16.sp,
                            letterSpacing: kLetterSpacing.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SAsset.download,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
