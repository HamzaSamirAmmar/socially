import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:socially/infrastructure/firebase/firebase_setup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'initializeLocator',
  preferRelativeImports: false,
  usesNullSafety: true,
)
Future<void> setupLocator() async {
  await setupFirebase();
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  await locator.initializeLocator();
}
