import '../../../../../core/data/base_local_datasource.dart';
import '../../models/post_model.dart';

abstract class HomeLocalDatasource extends BaseLocalDatasource {
  Future<List<PostModel>> getHomePosts();
  Future<List<PostModel>> getHomeStories();
  Future<void> saveHomePosts(List<PostModel> posts);
  Future<void> saveHomeStories(List<PostModel> stories);
}
