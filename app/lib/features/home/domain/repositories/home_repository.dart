import 'package:dartz/dartz.dart';
import 'package:socially/core/failures/failures.dart';

import '../../../../core/data/base_repository.dart';
import '../entities/post.dart';

abstract class HomeRepository extends BaseRepository {
  Future<Either<Failure, List<Post>>> getHomePosts();
  Future<Either<Failure, List<Post>>> getHomeStories();
}
