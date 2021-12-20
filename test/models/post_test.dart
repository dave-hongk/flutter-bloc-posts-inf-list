import 'package:flutter_bloc_posts_inf_list/src/models/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Post', () {
    test('value comparison', () {
      final post1 = Post((b) => b
        ..id = 'id'
        ..uid = 'uid'
        ..userDisplayName = 'dpn'
        ..subject = 'subject'
        ..body = 'body'
        ..timestamp = '111111');
      final post2 = Post((b) => b
        ..id = 'id'
        ..uid = 'uid'
        ..userDisplayName = 'dpn'
        ..subject = 'subject'
        ..body = 'body'
        ..timestamp = '111111');
      expect(post1, post2);
    });
  });
}
