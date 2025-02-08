import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

bool _isCrashlyticsReady = false;

///
/// Function to enable Firebase Crashlytics for reporting
/// exception when in non-debug mode.
///
void setupCrashlytics() {
  if (kDebugMode || _isCrashlyticsReady) return;

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}

///
/// Function to report exception to Firebase Crashlytics
/// when in non-debug mode and crashlytics is ready.
///
Future<void> reportException(
  // ignore: avoid-unused-parameters
  dynamic exception, {
  // ignore: avoid-unused-parameters
  required StackTrace stack,
}) async {
  if (kDebugMode || !_isCrashlyticsReady) return;
  await FirebaseCrashlytics.instance.recordError(exception, stack);
}
