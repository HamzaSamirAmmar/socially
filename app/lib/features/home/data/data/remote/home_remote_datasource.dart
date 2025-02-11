import '../../../../../core/data/base_remote_datasource.dart';
import '../../models/post_model.dart';

/// Remote data source for home-related operations.
///
/// This class is responsible for fetching posts and other home-related data
/// from the Supabase backend. It uses [DatabaseStorageService] for all
/// database operations.
abstract class HomeRemoteDatasource extends BaseRemoteDatasource {
  /// Fetches all posts from the database.
  ///
  /// Returns a list of [PostModel] objects.
  /// Throws an exception if the operation fails.
  Future<List<PostModel>> getHomePosts();

  /// Fetches all posts from the database.
  ///
  /// Returns a list of [PostModel] objects where post type equals to story.
  /// And created at within the last 24 hour
  /// Throws an exception if the operation fails.
  Future<List<PostModel>> getHomeStories();
}
