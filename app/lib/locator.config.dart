// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:socially/infrastructure/connection/connection_service.dart'
    as _i3;
import 'package:socially/infrastructure/persistence/database_storage_service.dart'
    as _i4;
import 'package:socially/infrastructure/persistence/local_storage_service.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> initializeLocator({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final connectionServiceRegister = _$ConnectionServiceRegister();
    final databaseStorageRegister = _$DatabaseStorageRegister();
    final localStorageServiceRegister = _$LocalStorageServiceRegister();
    await gh.factoryAsync<_i3.ConnectionService>(
      () => connectionServiceRegister.create(),
      preResolve: true,
    );
    gh.singleton<_i4.DatabaseSchemasPasser>(() => _i4.DatabaseSchemasPasser());
    await gh.factoryAsync<_i5.Isar>(
      () => databaseStorageRegister.create(gh<_i4.DatabaseSchemasPasser>()),
      preResolve: true,
    );
    await gh.factoryAsync<_i6.LocalStorageService>(
      () => localStorageServiceRegister.create(),
      preResolve: true,
    );
    return this;
  }
}

class _$ConnectionServiceRegister extends _i3.ConnectionServiceRegister {}

class _$DatabaseStorageRegister extends _i4.DatabaseStorageRegister {}

class _$LocalStorageServiceRegister extends _i6.LocalStorageServiceRegister {}
