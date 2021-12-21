import 'package:flutter_bloc_posts_inf_list/src/bloc/post_state.dart';
import 'package:flutter_bloc_posts_inf_list/src/models/post.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:built_collection/built_collection.dart';

void main() {
  group('PostStatus', () {
    test('value comparisons', () {
      expect(PostStatus.initial, PostStatus.initial);
      expect(PostStatus.loading, PostStatus.loading);
      expect(PostStatus.success, PostStatus.success);
      expect(PostStatus.failure, PostStatus.failure);
      expect(PostStatus.initial == PostStatus.failure, isFalse);
    });

    test('valueOf', () {
      expect(PostStatus.valueOf('initial'), PostStatus.initial);
      expect(PostStatus.valueOf('loading'), PostStatus.loading);
      expect(PostStatus.valueOf('success'), PostStatus.success);
      expect(PostStatus.valueOf('failure'), PostStatus.failure);
    });
  });

  group('PostState', () {
    group('value comparisons', () {
      late Post post1;
      late Post post2;
      late Post post3;
      late Post post4;

      setUp(() {
        post1 = Post((b) => b
          ..id = '1'
          ..userDisplayName = 'u'
          ..body = 'b'
          ..timestamp = '11'
          ..uid = '1'
          ..subject = '1');
        post2 = Post((b) => b
          ..id = '1'
          ..userDisplayName = 'u'
          ..body = 'b'
          ..timestamp = '11'
          ..uid = '1'
          ..subject = '1');
        post3 = Post((b) => b
          ..id = '1'
          ..userDisplayName = 'u'
          ..body = 'b'
          ..timestamp = '11'
          ..uid = '1'
          ..subject = '2');
        post4 = Post((b) => b
          ..id = '1'
          ..userDisplayName = 'u'
          ..body = 'b'
          ..timestamp = '11'
          ..uid = '1'
          ..subject = '2');
      });

      test('empty posts', () {
        final state1 = PostState((b) => b
          ..status = PostStatus.initial
          ..posts = BuiltList<Post>([]).toBuilder());
        final state2 = PostState((b) => b
          ..status = PostStatus.initial
          ..posts = BuiltList<Post>([]).toBuilder());
        expect(state1, state2);
      });

      test('non-empty posts same order', () {
        final state1 = PostState((b) => b
          ..status = PostStatus.success
          ..posts = BuiltList<Post>([post1, post3]).toBuilder());
        final state2 = PostState((b) => b
          ..status = PostStatus.success
          ..posts = BuiltList<Post>([post2, post4]).toBuilder());
        expect(state1 == state2, isTrue);
      });

      test('non-empty posts different order', () {
        final state1 = PostState((b) => b
          ..status = PostStatus.success
          ..posts = BuiltList<Post>([post3, post1]).toBuilder());
        final state2 = PostState((b) => b
          ..status = PostStatus.success
          ..posts = BuiltList<Post>([post2, post4]).toBuilder());
        expect(state1 == state2, isFalse);
      });
    });


  });
}
