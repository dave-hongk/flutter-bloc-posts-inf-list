import 'package:built_value/built_value.dart';

part 'post_event.g.dart';

/// An abstract event for [Post] items fetched.
abstract class PostEvent {}

/// {@template post_requested}
/// [PostEvent] for [Post] items requested between [fromTimestamp] and
/// [toTimestamp] for [Post] ID's larger than [fromID].
/// {@endtemplate}
abstract class PostRequested extends PostEvent
    implements Built<PostRequested, PostRequestedBuilder> {
  /// Request [Post] items to have timestamp appearing after this timestamp.
  String? get fromTimestamp;

  /// Request [Post] items to have timestamp appearing not after this timestamp.
  String? get toTimestamp;

  /// Request [Post] items to have ID larger than this ID.
  String? get fromId;

  /// Maximum number of [Post] items to fetch and return.
  int? get maxCount;

  /// {@macro post_requested}
  factory PostRequested([Function(PostRequestedBuilder b) update]) =
      _$PostRequested;

  PostRequested._();
}
