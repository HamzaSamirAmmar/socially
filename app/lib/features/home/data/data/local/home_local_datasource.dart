import '../../../../../core/data/base_local_datasource.dart';
import '../../../../../core/infrastructure/database_models/post_db_model.dart';
import '../../models/post_model.dart';

abstract class HomeLocalDatasource extends BaseLocalDatasource {
  // Future<List<PostDbModel>> getHomePosts();
  Future<List<PostDbModel>> getHomeStories();
  // Future<void> saveHomePosts(List<PostModel> posts);
  Future<void> saveHomeStories(List<PostModel> stories);
}
