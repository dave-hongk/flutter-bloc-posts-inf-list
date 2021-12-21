import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc_posts_inf_list/src/models/post.dart';
import 'package:flutter_bloc_posts_inf_list/src/post_repository.dart';

class FirestorePostRepository extends PostRepository {
  final _postRepo = FirebaseFirestore.instance.collection('posts');

  @override
  Future<List<Post>> queryPosts(
      {String? fromTimestamp,
      String? toTimestamp,
      String? fromId,
      int? maxCount}) async {
    late Query<Map<String, dynamic>> queryMap;
    if (fromTimestamp != null) {
      queryMap =
          _postRepo.where('timestamp', isGreaterThanOrEqualTo: fromTimestamp);
    }
    if (toTimestamp != null) {
      queryMap = queryMap.where('timestamp', isLessThanOrEqualTo: toTimestamp);
    }
    if (fromId != null) {
      queryMap = queryMap.where('id', isGreaterThan: fromId);
    }
    if (maxCount != null) {
      queryMap = queryMap.limit(maxCount);
    }
    final querySnapshot = await queryMap.get();
    return querySnapshot.docs
        .map((e) => Post.fromFirestoreDocumentSnapshot(e))
        .toList();
  }
}
