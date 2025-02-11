import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:socially/core/data/models/base_model.dart';

import '../domain/entities/base_entity.dart';
import '../failures/failures.dart';
import '../infrastructure/connection/connection_service.dart';
import '../infrastructure/logger/socially_logger.dart';

typedef RemoteRequest<M> = Future<List<M>> Function();
typedef LocalRequest<T> = Future<List<T>> Function();
typedef CacheData<M> = Future<void> Function(List<M> models);

abstract class BaseRepository {
  Future<Either<Failure, List<T>>> performListRequestFromRemoteOrLocal<
    T extends BaseEntity,
    M extends BaseModel
  >({
    required RemoteRequest<M> remoteRequest,
    required LocalRequest<T> localRequest,
    CacheData<M>? cacheData,
  });
}

@LazySingleton(as: BaseRepository)
class BaseRepositoryImpl implements BaseRepository {
  final ConnectionService connectionService;

  BaseRepositoryImpl({required this.connectionService});

  @override
  Future<Either<Failure, List<T>>> performListRequestFromRemoteOrLocal<
    T extends BaseEntity,
    M extends BaseModel
  >({
    required RemoteRequest<M> remoteRequest,
    required LocalRequest<T> localRequest,
    CacheData<M>? cacheData,
  }) async {
    try {
      if (connectionService.hasConnection()) {
        final remoteResult = await _fetchRemoteData<M>(remoteRequest);

        if (remoteResult.isNotEmpty) {
          // ✅ Allow transformation & caching, but don't enforce it
          if (cacheData != null) {
            await cacheData(remoteResult);
          }
          return Right(remoteResult.map((e) => (e).toEntity() as T).toList());
        }
      }

      // If remote fails or no connection, fetch from local
      final localResult = await localRequest();
      return Right(localResult);
    } catch (e, s) {
      sLogger.e(e, stack: s);
      return Left(ServerFailure()); // Handle unexpected exceptions
    }
  }

  /// Helper function to fetch remote data with error handling
  Future<List<M>> _fetchRemoteData<M>(RemoteRequest<M> remoteRequest) async {
    try {
      return await remoteRequest();
    } catch (_) {
      return []; // Return an empty list if the remote request fails
    }
  }
}
