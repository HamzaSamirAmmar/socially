// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;
import 'package:socially/core/data/base_local_datasource.dart' as _i7;
import 'package:socially/core/data/base_remote_datasource.dart' as _i8;
import 'package:socially/core/data/base_repository.dart' as _i9;
import 'package:socially/core/infrastructure/connection/connection_service.dart'
    as _i3;
import 'package:socially/core/infrastructure/persistence/database_storage_service.dart'
    as _i20;
import 'package:socially/core/infrastructure/persistence/local_storage_service.dart'
    as _i5;
import 'package:socially/core/infrastructure/supabase/supabase_module.dart'
    as _i21;
import 'package:socially/features/home/data/data/local/home_local_datasource.dart'
    as _i10;
import 'package:socially/features/home/data/data/local/home_local_datasource_imp.dart'
    as _i11;
import 'package:socially/features/home/data/data/remote/home_remote_datasource.dart'
    as _i12;
import 'package:socially/features/home/data/data/remote/home_remote_datasource_imp.dart'
    as _i13;
import 'package:socially/features/home/data/repositories/home_repository_imp.dart'
    as _i15;
import 'package:socially/features/home/domain/repositories/home_repository.dart'
    as _i14;
import 'package:socially/features/home/domain/usecases/fetch_posts_usecase.dart'
    as _i16;
import 'package:socially/features/home/domain/usecases/fetch_stories_usecase.dart'
    as _i17;
import 'package:socially/features/home/presentation/state_m/posts_cubit/posts_cubit.dart'
    as _i18;
import 'package:socially/features/home/presentation/state_m/stories_cubit/stories_cubit.dart'
    as _i19;
import 'package:supabase_flutter/supabase_flutter.dart' as _i6;

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
    final supabaseModule = _$SupabaseModule();
    await gh.factoryAsync<_i3.ConnectionService>(
      () => connectionServiceRegister.create(),
      preResolve: true,
    );
    await gh.factoryAsync<_i4.Isar>(
      () => databaseStorageRegister.create(),
      preResolve: true,
    );
    await gh.factoryAsync<_i5.LocalStorageService>(
      () => localStorageServiceRegister.create(),
      preResolve: true,
    );
    await gh.singletonAsync<_i6.SupabaseClient>(
      () => supabaseModule.provideSupabaseClient(),
      preResolve: true,
    );
    gh.lazySingleton<_i7.BaseLocalDatasource>(() => _i7.BaseLocalDataSourceImpl(
          gh<_i5.LocalStorageService>(),
          gh<_i4.Isar>(),
        ));
    gh.lazySingleton<_i8.BaseRemoteDatasource>(() =>
        _i8.BaseRemoteDataSourceImpl(supabaseClient: gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i9.BaseRepository>(() =>
        _i9.BaseRepositoryImpl(connectionService: gh<_i3.ConnectionService>()));
    gh.lazySingleton<_i10.HomeLocalDatasource>(
        () => _i11.HomeLocalDatasourceImp(
              gh<_i5.LocalStorageService>(),
              gh<_i4.Isar>(),
            ));
    gh.lazySingleton<_i12.HomeRemoteDatasource>(() =>
        _i13.HomeRemoteDatasourceImp(supabaseClient: gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i14.HomeRepository>(() => _i15.HomeRepositoryImp(
          gh<_i12.HomeRemoteDatasource>(),
          gh<_i10.HomeLocalDatasource>(),
          connectionService: gh<_i3.ConnectionService>(),
        ));
    gh.lazySingleton<_i16.FetchPostsUsecase>(
        () => _i16.FetchPostsUsecase(gh<_i14.HomeRepository>()));
    gh.lazySingleton<_i17.FetchStoriesUsecase>(
        () => _i17.FetchStoriesUsecase(gh<_i14.HomeRepository>()));
    gh.factory<_i18.PostsCubit>(
        () => _i18.PostsCubit(gh<_i16.FetchPostsUsecase>()));
    gh.factory<_i19.StoriesCubit>(
        () => _i19.StoriesCubit(gh<_i17.FetchStoriesUsecase>()));
    return this;
  }
}

class _$ConnectionServiceRegister extends _i3.ConnectionServiceRegister {}

class _$DatabaseStorageRegister extends _i20.DatabaseStorageRegister {}

class _$LocalStorageServiceRegister extends _i5.LocalStorageServiceRegister {}

class _$SupabaseModule extends _i21.SupabaseModule {}
