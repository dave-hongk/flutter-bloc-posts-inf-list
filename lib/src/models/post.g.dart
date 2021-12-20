// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Post extends Post {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String userDisplayName;
  @override
  final String subject;
  @override
  final String body;
  @override
  final String timestamp;

  factory _$Post([void Function(PostBuilder)? updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {required this.id,
      required this.uid,
      required this.userDisplayName,
      required this.subject,
      required this.body,
      required this.timestamp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Post', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'Post', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        userDisplayName, 'Post', 'userDisplayName');
    BuiltValueNullFieldError.checkNotNull(subject, 'Post', 'subject');
    BuiltValueNullFieldError.checkNotNull(body, 'Post', 'body');
    BuiltValueNullFieldError.checkNotNull(timestamp, 'Post', 'timestamp');
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        uid == other.uid &&
        userDisplayName == other.userDisplayName &&
        subject == other.subject &&
        body == other.body &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), uid.hashCode),
                    userDisplayName.hashCode),
                subject.hashCode),
            body.hashCode),
        timestamp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('uid', uid)
          ..add('userDisplayName', userDisplayName)
          ..add('subject', subject)
          ..add('body', body)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _userDisplayName;
  String? get userDisplayName => _$this._userDisplayName;
  set userDisplayName(String? userDisplayName) =>
      _$this._userDisplayName = userDisplayName;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  String? _timestamp;
  String? get timestamp => _$this._timestamp;
  set timestamp(String? timestamp) => _$this._timestamp = timestamp;

  PostBuilder();

  PostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _userDisplayName = $v.userDisplayName;
      _subject = $v.subject;
      _body = $v.body;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    final _$result = _$v ??
        new _$Post._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Post', 'id'),
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'Post', 'uid'),
            userDisplayName: BuiltValueNullFieldError.checkNotNull(
                userDisplayName, 'Post', 'userDisplayName'),
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, 'Post', 'subject'),
            body: BuiltValueNullFieldError.checkNotNull(body, 'Post', 'body'),
            timestamp: BuiltValueNullFieldError.checkNotNull(
                timestamp, 'Post', 'timestamp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
