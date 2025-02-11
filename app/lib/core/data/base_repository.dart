import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failures/failures.dart';
import '../infrastructure/connection/connection_service.dart';

typedef RequestBody<T> = Future<T> Function();

abstract class BaseRepository {
  Future<Either<Failure, T>> performRequestFromRemoteOrLocal<T>({
    required RequestBody<T> remoteBody,
    required RequestBody<T> localBody,
  });
}

@LazySingleton(as: BaseRepository)
class BaseRepositoryImpl implements BaseRepository {
  final ConnectionService connectionService;

  BaseRepositoryImpl({required this.connectionService});

  @override
  Future<Either<Failure, T>> performRequestFromRemoteOrLocal<T>({
    required RequestBody<T> remoteBody,
    required RequestBody<T> localBody,
  }) async {
    try {
      return connectionService.hasConnection()
          ? Right(await remoteBody())
          : Right(await localBody());
    } catch (e,s) {
      return Left(ServerFailure()); // TODO: Handle exception
    }
  }
}
