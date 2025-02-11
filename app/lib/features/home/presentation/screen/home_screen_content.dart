import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially/features/home/presentation/widgets/posts_section/posts_section.dart';
import 'package:socially/features/home/presentation/widgets/stories_section/stories_section.dart';

/// The main content widget for the home screen.
class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: StoriesSection()),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          sliver: PostsSection(),
        ),
      ],
    );
  }
}
