import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socially_ui_components/theme/theme.dart';

import 'app_configuration.dart';
import 'core/infrastructure/firebase/crashlytics.dart';
import 'core/infrastructure/l10n/l10n_json_delegate.dart';
import 'core/infrastructure/l10n/l10n_meta.dart';
import 'core/infrastructure/l10n/l10n_service.dart';
import 'core/infrastructure/logger/socially_logger.dart';
import 'locator.dart';
import 'core/navigation/app_banner.dart';
import 'core/navigation/app_navigation.dart';


void main() {
  // Run in zone guard to catch all exceptions.
  runZonedGuarded(
    () async {
      // Initialize Flutter bindings for further native code communication.
      WidgetsFlutterBinding.ensureInitialized();

      await setupLocator();

      L10nService.instance.configure(
        const L10nMeta(
          locale: Locale('en'),
          filePath: 'assets/translations/en.json',
        ),
      );

      runApp(const SociallyApp());
    },
    (error, stack) {
      sLogger.f("[INIT] failed with error: $error", stack: stack);
    },
  );

  // Report exceptions outside the Flutter context.
  Isolate.current.addErrorListener(
    RawReceivePort((List<dynamic> pair) async {
      final errorAndStacktrace = pair;
      await reportException(
        errorAndStacktrace.first,
        stack: errorAndStacktrace.last as StackTrace,
      );
    }).sendPort,
  );
}

class SociallyApp extends StatelessWidget {
  const SociallyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Using the same dimensions as your Figma design
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Socially App',
          localizationsDelegates: const [L10nJSONLocalization.delegate],
          builder: (context, child) {
            return AppBanner(
              configuration: AppConfiguration.standard,
              child: child!,
            );
          },
          supportedLocales: L10nService.instance.supportedLocales,
          theme: sTheme,
          routeInformationParser: appNavigationRouter.routeInformationParser,
          routerDelegate: appNavigationRouter.routerDelegate,
          routeInformationProvider: appNavigationRouter.routeInformationProvider,
        );
      },
    );
  }
}
