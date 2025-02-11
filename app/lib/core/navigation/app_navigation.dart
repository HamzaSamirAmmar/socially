import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/screen/main_screen.dart';
import '../../features/splash/presentation/screen/splash_screen.dart';
import 'app_navigation_route.dart';

typedef ScreenBuilder = Widget Function(Map<String, String> query);

final appNavigationRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppNavigationRoute.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppNavigationRoute.main,
      builder: (context, state) => const MainScreen(),
    ),

  ],
  debugLogDiagnostics: kDebugMode,
);

GoRouterPageBuilder? _buildFadeTransition({required Widget child}) =>
    _buildFadeTransitionWithQuery(builder: (_) => child);

GoRouterPageBuilder? _buildFadeTransitionWithQuery({
  required ScreenBuilder builder,
}) =>
    (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: builder(state.uri.queryParameters),
      transitionsBuilder:
          (context, animation, _, child) =>
              FadeTransition(opacity: animation, child: child),
    );
