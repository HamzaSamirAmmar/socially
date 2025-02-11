import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:socially/core/navigation/app_navigation_route.dart';
import 'package:socially_ui_components/components/assets/socially_asset.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
  
    Future.delayed(const Duration(seconds: 2), () {
      context.go(AppNavigationRoute.main);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SAsset.logo));
  }
}
