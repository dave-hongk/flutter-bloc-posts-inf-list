import 'package:built_value/built_value.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'post.g.dart';

/// {@template post}
/// Post of a user for a subject with some body of information.
/// {@endtemplate}
abstract class Post implements Built<Post, PostBuilder> {
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

  static Post fromFirestoreDocumentSnapshot(DocumentSnapshot snap) {
    return Post((b) => b
      ..id = snap.id
      ..uid = snap['uid']
      ..userDisplayName = snap['user_display_name']
      ..subject = snap['subject']
      ..body = snap['body']
      ..timestamp = snap['timestamp']);
  }
}
