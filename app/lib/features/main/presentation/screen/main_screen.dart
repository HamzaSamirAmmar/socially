import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socially/features/home/presentation/screen/home_screen.dart';
import 'package:socially/features/home/presentation/state_m/stories_cubit/stories_cubit.dart';
import 'package:socially/features/profile/presentaion/screen/profile_screen.dart';
import 'package:socially/locator.dart';
import 'package:socially_ui_components/components/assets/socially_asset.dart';
import 'package:socially_ui_components/components/bars/app_bar.dart';
import 'package:socially_ui_components/components/bars/navigation_bar.dart';

import '../../../explore/presentaion/screen/explore_screen.dart'
    show ExploreScreen;
import '../../../home/presentation/state_m/posts_cubit/posts_cubit.dart'
    show PostsCubit;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => locator<PostsCubit>()),
        BlocProvider(create: (context) => locator<StoriesCubit>()),
      ],
      child: const HomeScreen(),
    ),
    const ExploreScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        onLeadingTap: () {
          // navigate to notifications page
        },
      ),
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SNavigationBar(
              selectedIndex: _selectedIndex,
              items: [
                SNavigationItem(icon: SAsset.home),
                SNavigationItem(icon: SAsset.explore),
                SNavigationItem(icon: SAsset.profile),
              ],
              onTap: (newIndex) {
                if (newIndex != _selectedIndex) {
                  setState(() {
                    _selectedIndex = newIndex;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
