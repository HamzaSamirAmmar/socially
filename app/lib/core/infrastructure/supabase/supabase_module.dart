import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// import 'supabase_service.dart';

/// Module for providing Supabase-related dependencies.
///
/// This module is responsible for:
/// 1. Initializing Supabase with proper configuration
/// 2. Providing the SupabaseClient instance.
/// 3. Providing the SupabaseService instance.
@module
abstract class SupabaseModule {
  /// Creates and provides a [SupabaseClient] instance.
  ///
  /// This provider ensures that environment variables are loaded before
  /// initializing Supabase. It will throw an assertion error if the required
  /// environment variables are not available.
  @singleton
  @preResolve
  Future<SupabaseClient> provideSupabaseClient() async {    

    // Initialize Supabase.
    await Supabase.initialize(
      url:'https://lmqcditytujkztctnxli.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxtcWNkaXR5dHVqa3p0Y3RueGxpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzg4NDcyODcsImV4cCI6MjA1NDQyMzI4N30.939ZQkIX7l0bPgxxFt_6Uyl-HaXXATxNqi80eXF4BTw',
    );

    return Supabase.instance.client;
  }
}
