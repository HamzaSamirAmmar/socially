import '../firebase/crashlytics.dart';
import 'log_service.dart';

///
/// Define default logger from start.
///
final sLogger = SociallyLogger._instance;

class SociallyLogger {
  final LogService _logService;

  SociallyLogger._privateConstructor(this._logService);

  static final SociallyLogger _instance = SociallyLogger._privateConstructor(
    LogService(),
  );

  /// Log for debugging purpose.
  void d(dynamic message) => _logService.reportDebug(message);

  /// Log info.
  void i(dynamic message) => _logService.reportInfo(message);

  /// Log warning messages.
  void w(dynamic message) => _logService.reportWarning(message);

  /// Log error messages.
  void e(dynamic message, {required StackTrace stack}) {
    _logService.reportInfo(message);
    reportException(message, stack: stack);
  }

  /// Log failure messages.
  void f(dynamic message, {required StackTrace stack}) {
    _logService.reportFail(message);
    reportException(message, stack: stack);
  }
}
