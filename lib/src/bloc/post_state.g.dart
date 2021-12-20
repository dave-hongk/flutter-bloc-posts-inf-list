// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostStatus _$initial = const PostStatus._('initial');
const PostStatus _$loading = const PostStatus._('loading');
const PostStatus _$success = const PostStatus._('success');
const PostStatus _$failure = const PostStatus._('failure');

PostStatus _$valueOf(String name) {
  switch (name) {
    case 'initial':
      return _$initial;
    case 'loading':
      return _$loading;
    case 'success':
      return _$success;
    case 'failure':
      return _$failure;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PostStatus> _$values =
    new BuiltSet<PostStatus>(const <PostStatus>[
  _$initial,
  _$loading,
  _$success,
  _$failure,
]);

class _$PostState extends PostState {
  @override
  final PostStatus status;
  @override
  final BuiltList<Post>? posts;
  @override
  final String? errorMessage;

  factory _$PostState([void Function(PostStateBuilder)? updates]) =>
      (new PostStateBuilder()..update(updates)).build();

  _$PostState._({required this.status, this.posts, this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'PostState', 'status');
  }

  @override
  PostState rebuild(void Function(PostStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStateBuilder toBuilder() => new PostStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostState &&
        status == other.status &&
        posts == other.posts &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, status.hashCode), posts.hashCode), errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostState')
          ..add('status', status)
          ..add('posts', posts)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class PostStateBuilder implements Builder<PostState, PostStateBuilder> {
  _$PostState? _$v;

  PostStatus? _status;
  PostStatus? get status => _$this._status;
  set status(PostStatus? status) => _$this._status = status;

  ListBuilder<Post>? _posts;
  ListBuilder<Post> get posts => _$this._posts ??= new ListBuilder<Post>();
  set posts(ListBuilder<Post>? posts) => _$this._posts = posts;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  PostStateBuilder();

  PostStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _posts = $v.posts?.toBuilder();
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostState;
  }

  @override
  void update(void Function(PostStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostState build() {
    _$PostState _$result;
    try {
      _$result = _$v ??
          new _$PostState._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, 'PostState', 'status'),
              posts: _posts?.build(),
              errorMessage: errorMessage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
