import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../logger/socially_logger.dart';

///
/// A class to create instance of Hive package
/// and initialize it to get different local data.
///
@module
abstract class LocalStorageServiceRegister {
  @preResolve
  Future<LocalStorageService> create() async {
    try {
      await Hive.initFlutter();
      await Hive.openBox(LocalStorageService._defaultBoxName);

      sLogger.i(
        "[Persistence] local storage initialized under: ${LocalStorageService._defaultBoxName}",
      );
    } catch (exception, stack) {
      sLogger.f(
        "[Persistence] local storage exception: $exception",
        stack: stack,
      );
    }

    return LocalStorageService(LocalStorageService._defaultBoxName);
  }
}

///
/// Wrapper class for [Hive] persistence storage to be used as replacement
/// for [SharedPreferences] package.
///
/// Should be used only for low volume data with preferences to
/// application settings or not domain related information.
///
/// For more information regarding [Hive] package please check
/// https://docs.hivedb.dev/#/.
///
class LocalStorageService {
  static const _defaultBoxName = 'app-box';

  LocalStorageService(String boxName) : _box = Hive.box<dynamic>(boxName);

  final Box<dynamic> _box;

  /// Get previously saved data, if not available return `null`.
  T? get<T>(String key) {
    return _box.get(key) != null ? _box.get(key) as T : null;
  }

  /// Stream changes on a particular key, and listen to its changes.
  Stream<T?> watch<T>(String key) {
    return _box.watch(key: key).map((event) => event.value as T);
  }

  /// Save any type of data supported by [Hive].
  ///
  /// Currently supported out of the box are all primitive types,
  /// [List], [Map], [DateTime], [BigInt] and [Uint8List].
  /// Any other custom type requires TypeAdapter with registration up front.
  void save(String key, dynamic value) => _box.put(key, value);

  /// Remove previously saved data, if data exists just noop.
  void delete(String key) => _box.delete(key);
}
