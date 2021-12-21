// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostRequested extends PostRequested {
  @override
  final String? fromTimestamp;
  @override
  final String? toTimestamp;
  @override
  final String? fromId;

  factory _$PostRequested([void Function(PostRequestedBuilder)? updates]) =>
      (new PostRequestedBuilder()..update(updates)).build();

  _$PostRequested._({this.fromTimestamp, this.toTimestamp, this.fromId})
      : super._();

  @override
  PostRequested rebuild(void Function(PostRequestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostRequestedBuilder toBuilder() => new PostRequestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostRequested &&
        fromTimestamp == other.fromTimestamp &&
        toTimestamp == other.toTimestamp &&
        fromId == other.fromId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, fromTimestamp.hashCode), toTimestamp.hashCode),
        fromId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostRequested')
          ..add('fromTimestamp', fromTimestamp)
          ..add('toTimestamp', toTimestamp)
          ..add('fromId', fromId))
        .toString();
  }
}

class PostRequestedBuilder
    implements Builder<PostRequested, PostRequestedBuilder> {
  _$PostRequested? _$v;

  String? _fromTimestamp;
  String? get fromTimestamp => _$this._fromTimestamp;
  set fromTimestamp(String? fromTimestamp) =>
      _$this._fromTimestamp = fromTimestamp;

  String? _toTimestamp;
  String? get toTimestamp => _$this._toTimestamp;
  set toTimestamp(String? toTimestamp) => _$this._toTimestamp = toTimestamp;

  String? _fromId;
  String? get fromId => _$this._fromId;
  set fromId(String? fromId) => _$this._fromId = fromId;

  PostRequestedBuilder();

  PostRequestedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromTimestamp = $v.fromTimestamp;
      _toTimestamp = $v.toTimestamp;
      _fromId = $v.fromId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostRequested other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostRequested;
  }

  @override
  void update(void Function(PostRequestedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostRequested build() {
    final _$result = _$v ??
        new _$PostRequested._(
            fromTimestamp: fromTimestamp,
            toTimestamp: toTimestamp,
            fromId: fromId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
