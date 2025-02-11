import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:socially/core/infrastructure/firebase/firebase_setup.dart';

import 'locator.config.dart';

/// Configures dependency injection for the app.
///
/// This function is responsible for initializing all dependencies
/// using GetIt and Injectable. Environment variables and Supabase
/// initialization are handled by their respective modules.

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'initializeLocator',
  preferRelativeImports: false,
  usesNullSafety: true,
)
Future<void> setupLocator() async {
  await setupFirebase();
  await dotenv.load();
  await locator.initializeLocator();
}
