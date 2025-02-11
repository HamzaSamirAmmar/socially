import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

///
/// Service to set log styling through out the application
/// depending on different types of logs.
///
class LogService {
  late Logger _logger;

  LogService() {
    const level = kReleaseMode ? Level.info : Level.debug;
    final filter = kReleaseMode ? ProductionFilter() : DevelopmentFilter();
    _logger = Logger(
      filter: filter,
      printer: SimplePrinter(printTime: kDebugMode, colors: !Platform.isIOS),
      level: level,
    );
  }

  void reportDebug(dynamic message) => _logger.d(message);

  void reportInfo(dynamic message) => _logger.i(message);

  void reportWarning(dynamic message) => _logger.w(message);

  void reportError(dynamic message) => _logger.e(message);

  void reportFail(dynamic message) => _logger.f(message);
}
