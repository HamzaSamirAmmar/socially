import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/post.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class FetchPostsUsecase implements UseCase<List<Post>, NoParams> {
  final HomeRepository _repository;

  FetchPostsUsecase(this._repository);

  @override
  Future<Either<Failure, List<Post>>> call(NoParams params) async =>
      await _repository.getHomePosts();
}
