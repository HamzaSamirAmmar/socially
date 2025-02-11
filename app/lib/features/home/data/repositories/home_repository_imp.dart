import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/failures/failures.dart';
import '../../domain/entities/post.dart';
import '../../domain/repositories/home_repository.dart';
import '../data/local/home_local_datasource.dart';
import '../data/remote/home_remote_datasource.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp extends BaseRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource _remoteDatasource;
  final HomeLocalDatasource _localDatasource;

  HomeRepositoryImp(
    this._remoteDatasource,
    this._localDatasource, {
    required super.connectionService,
  });

  @override
  Future<Either<Failure, List<Post>>> getHomePosts() async =>
      await performRequestFromRemoteOrLocal<List<Post>>(
        remoteBody:
            () async =>
                (await _remoteDatasource.getHomePosts())
                    .map((model) => model.toEntity())
                    .toList(),
        localBody: () async => [],
      );

  @override
  Future<Either<Failure, List<Post>>> getHomeStories() async =>
      await performRequestFromRemoteOrLocal<List<Post>>(
        remoteBody:
            () async =>
                (await _remoteDatasource.getHomeStories())
                    .map((model) => model.toEntity())
                    .toList(),
        localBody: () async => [],
      );
}
