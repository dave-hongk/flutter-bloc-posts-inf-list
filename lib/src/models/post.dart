import 'package:built_value/built_value.dart';

part 'post.g.dart';

/// {@template post}
/// Post of a user for a subject with some body of information.
/// {@endtemplate}
abstract class Post implements Built<Post, PostBuilder>{
  /// Unique ID of the [Post].
  String get id;
  /// Unique user ID of the author.
  String get uid;
  /// Display name of the author.
  String get userDisplayName;
  /// Subject of the [Post].
  String get subject;
  /// The contents of the [Post].
  String get body;
  /// The upload time.
  String get timestamp;

  /// {@macro post}
  factory Post([Function(PostBuilder b) updates]) = _$Post;

  Post._();
}