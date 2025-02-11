import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_view/story_view.dart';
// import 'package:socially/features/home/presentation/widgets/stories_section/story_item_view.dart';

import '../../../../../core/presentation/avatar_network_image.dart';
import '../../../domain/entities/post.dart';
import 'story_item_view.dart';

class StoryListItem extends StatelessWidget {
  final Post story;

  const StoryListItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => StoryItemView(
                      itemsCreationDate: List.generate(
                        story.postmedia.length,
                        (i) => story.postmedia[i].createdAt,
                      ),
                      username: story.user.name,
                      items: story.postmedia
                          .map(
                            (e) => StoryItem.pageImage(
                              url: e.url,
                              controller: StoryController(),
                              imageFit: BoxFit.cover,
                            ),
                          )
                          .toList(),
                ),
          ),
        );
      },
      child: Container(
        width: 57.w,
        height: 57.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: AvatarNetworkImage(
            imageUrl: story.user.avatarUrl ?? '',
            width: 57.w,
            height: 57.w,
          ),
        ),
      ),
    );
  }
}
