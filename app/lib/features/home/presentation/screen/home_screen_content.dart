import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/posts_section/posts_section.dart';
import '../widgets/stories_section/stories_section.dart';

/// The main content widget for the home screen.
class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: StoriesSection()),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 80.h, right: 13.w, left: 13.w),
          sliver: PostsSection(),
        ),
      ],
    );
  }
}
