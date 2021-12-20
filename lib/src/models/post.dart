import 'package:built_value/built_value.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder>{

  String get id;
  String get uid;
  String get userDisplayName;
  String get subject;
  String get body;
  String get timestamp;

  factory Post([Function(PostBuilder b) updates]) = _$Post;

  Post._();
}