import 'package:flutter/cupertino.dart';
import 'package:socially/core/infrastructure/logger/socially_logger.dart';

enum AppEnvironment { development, staging, production }

class AppConfiguration {
  static final standard = AppConfiguration._(
    const String.fromEnvironment('APP_ENVIRONMENT'),
  );

  AppConfiguration._(String rawEnvironment)
    : _environment = AppEnvironment.values.firstWhere(
        (value) => value.name == rawEnvironment,
        orElse: () => AppEnvironment.development,
      ) {
    sLogger.i("[INIT] app launched for environment: $_environment");
  }

  AppEnvironment _environment;

  AppEnvironment get environment => _environment;

  @visibleForTesting
  set environment(AppEnvironment environment) {
    sLogger.i("[INIT] app launched for environment: $environment");
    _environment = environment;
  }
}
