import 'package:flutter_bloc_posts_inf_list/src/bloc/post_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PostEvent', () {
    group('PostRequested', () {
      test('value comparison', () {
        final event1 = PostRequested((b) => b
          ..toTimestamp = '1'
          ..fromTimestamp = '2'
          ..fromId = '3'
          ..maxCount = 2);
        final event2 = PostRequested((b) => b
          ..toTimestamp = '1'
          ..fromTimestamp = '2'
          ..fromId = '3'
          ..maxCount = 2);
        expect(event1 == event2, isTrue);
        expect(PostRequested() == PostRequested(), isTrue);
        expect(event1 == PostRequested(), isFalse);
      });
    });
  });
}
