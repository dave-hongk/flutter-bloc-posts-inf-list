import 'package:flutter_bloc_posts_inf_list/src/models/post.dart';

/// {@template post_repository}
/// Abstract class for repository of [Post] items.
/// {@endtemplate}
abstract class PostRepository {
  /// Query [Post] items meeting the given constraints.
  Future<List<Post>> queryPosts(
      {String? fromTimestamp,
      String? toTimestamp,
      String? fromId,
      int? maxCount});
}
