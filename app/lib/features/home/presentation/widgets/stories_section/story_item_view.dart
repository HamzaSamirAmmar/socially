import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/utils.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryItemView extends StatelessWidget {
  final List<StoryItem> items;
  const StoryItemView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return StoryView(
      storyItems: items,
      controller: StoryController(), // pass controller here too
      repeat: true, // should the stories be slid forever
      onStoryShow: (s, i) {
        print(i);
        print(s);
      },
      onComplete: () {},
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Navigator.pop(context);
        }
      }, // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }
}
