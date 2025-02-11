import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socially/features/home/presentation/state_m/stories_cubit/stories_cubit.dart';

import '../state_m/posts_cubit/posts_cubit.dart';
import 'home_screen_content.dart';

/// The main home screen of the app.
///
/// This screen displays a list of posts and handles the injection of
/// dependencies using [BlocProvider]. It provides the [PostsCubit] to
/// its widget subtree.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<PostsCubit>().fetchPosts();
    context.read<StoriesCubit>().fetchStories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Here we can return content based on the screen size
    // isTablet -> TabletHomeScreenContent
    // isDesktop -> DesktopHomeScreenContent
    return Scaffold(body: const HomeScreenContent());
  }
}
