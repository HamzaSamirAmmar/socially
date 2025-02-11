import 'package:firebase_core/firebase_core.dart';

import '../logger/socially_logger.dart';
import 'firebase_environment.dart';

///
/// Function to initialize firebase in the project.
///
Future<void> setupFirebase({FirebaseEnvironment? environment}) async {
  if (environment == null) return;

  try {
    await Firebase.initializeApp();

    sLogger.i("[INIT] firebase configured");
  } catch (exception, stack) {
    sLogger.e(exception, stack: stack);
  }
}
