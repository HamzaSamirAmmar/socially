import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:socially/core/infrastructure/persistence/local_storage_service.dart';
import 'package:socially/core/constants/local_storage_keys.dart';

/// Base class for local data sources using LocalStorageService.
///
/// This class provides a foundation for implementing local storage operations.
/// It includes methods for performing various storage operations with proper error handling.
abstract class BaseLocalDatasource {
  /// Gets the user's authentication token.
  String get token;

  /// Sets the user's authentication token.
  ///
  /// Throws an exception if the operation fails.
  Future<void> setToken(String token);

  /// Clears all stored data during logout.
  ///
  /// Throws an exception if the operation fails.
  Future<void> logout();
}

/// Implementation of [BaseLocalDatasource] using LocalStorageService.
@LazySingleton(as: BaseLocalDatasource)
class BaseLocalDataSourceImpl implements BaseLocalDatasource {
  final LocalStorageService _storage;
  final Isar isar;

  BaseLocalDataSourceImpl(this._storage, this.isar);

  @override
  String get token => _storage.get<String>(LocalStorageKeys.apiToken) ?? '';

  @override
  Future<void> setToken(String token) async {
    _storage.save(LocalStorageKeys.apiToken, token);
  }

  @override
  Future<void> logout() async {
    _storage.delete(LocalStorageKeys.apiToken);
  }
}
