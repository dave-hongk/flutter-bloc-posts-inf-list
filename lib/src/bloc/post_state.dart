import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_bloc_posts_inf_list/src/models/post.dart';

part 'post_state.g.dart';

/// {@template post_status}
/// Status of the [Post] items fetched.
/// {@endtemplate}
class PostStatus extends EnumClass {
  /// Initial state.
  static const PostStatus initial = _$initial;

  /// Loading of [Post] items in progress.
  static const PostStatus loading = _$loading;

  /// Loading of [Post] items complete.
  static const PostStatus success = _$success;

  /// Loading failure of [Post] items.
  static const PostStatus failure = _$failure;

  /// Enum values.
  static BuiltSet<PostStatus> get values => _$values;

  /// Enum value for the given name.
  static PostStatus valueOf(String name) => _$valueOf(name);

  const PostStatus._(String name) : super(name);
}

/// {@template post_state}
/// [PostState] represents the status of the current [Post] items that are
/// fetched or are being fetched.
abstract class PostState implements Built<PostState, PostStateBuilder> {
  /// The current [PostStatus].
  PostStatus get status;

  /// List of all [Post] items loaded.
  BuiltList<Post>? get posts;

  /// Error message on load failures.
  String? get errorMessage;

  factory PostState([Function(PostStateBuilder b) updates]) = _$PostState;

  PostState._();
}