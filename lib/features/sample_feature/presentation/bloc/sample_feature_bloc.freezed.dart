// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_feature_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleFeatureState {
  SampleFeatureStatus get status;
  List<SampleItem>? get sampleItems;

  /// Create a copy of SampleFeatureState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleFeatureStateCopyWith<SampleFeatureState> get copyWith =>
      _$SampleFeatureStateCopyWithImpl<SampleFeatureState>(
          this as SampleFeatureState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleFeatureState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.sampleItems, sampleItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(sampleItems));

  @override
  String toString() {
    return 'SampleFeatureState(status: $status, sampleItems: $sampleItems)';
  }
}

/// @nodoc
abstract mixin class $SampleFeatureStateCopyWith<$Res> {
  factory $SampleFeatureStateCopyWith(
          SampleFeatureState value, $Res Function(SampleFeatureState) _then) =
      _$SampleFeatureStateCopyWithImpl;
  @useResult
  $Res call({SampleFeatureStatus status, List<SampleItem>? sampleItems});
}

/// @nodoc
class _$SampleFeatureStateCopyWithImpl<$Res>
    implements $SampleFeatureStateCopyWith<$Res> {
  _$SampleFeatureStateCopyWithImpl(this._self, this._then);

  final SampleFeatureState _self;
  final $Res Function(SampleFeatureState) _then;

  /// Create a copy of SampleFeatureState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sampleItems = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleFeatureStatus,
      sampleItems: freezed == sampleItems
          ? _self.sampleItems
          : sampleItems // ignore: cast_nullable_to_non_nullable
              as List<SampleItem>?,
    ));
  }
}

/// @nodoc

class _SampleFeatureState extends SampleFeatureState {
  const _SampleFeatureState(
      {required this.status, final List<SampleItem>? sampleItems})
      : _sampleItems = sampleItems,
        super._();

  @override
  final SampleFeatureStatus status;
  final List<SampleItem>? _sampleItems;
  @override
  List<SampleItem>? get sampleItems {
    final value = _sampleItems;
    if (value == null) return null;
    if (_sampleItems is EqualUnmodifiableListView) return _sampleItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SampleFeatureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleFeatureStateCopyWith<_SampleFeatureState> get copyWith =>
      __$SampleFeatureStateCopyWithImpl<_SampleFeatureState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleFeatureState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._sampleItems, _sampleItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_sampleItems));

  @override
  String toString() {
    return 'SampleFeatureState(status: $status, sampleItems: $sampleItems)';
  }
}

/// @nodoc
abstract mixin class _$SampleFeatureStateCopyWith<$Res>
    implements $SampleFeatureStateCopyWith<$Res> {
  factory _$SampleFeatureStateCopyWith(
          _SampleFeatureState value, $Res Function(_SampleFeatureState) _then) =
      __$SampleFeatureStateCopyWithImpl;
  @override
  @useResult
  $Res call({SampleFeatureStatus status, List<SampleItem>? sampleItems});
}

/// @nodoc
class __$SampleFeatureStateCopyWithImpl<$Res>
    implements _$SampleFeatureStateCopyWith<$Res> {
  __$SampleFeatureStateCopyWithImpl(this._self, this._then);

  final _SampleFeatureState _self;
  final $Res Function(_SampleFeatureState) _then;

  /// Create a copy of SampleFeatureState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? sampleItems = freezed,
  }) {
    return _then(_SampleFeatureState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleFeatureStatus,
      sampleItems: freezed == sampleItems
          ? _self._sampleItems
          : sampleItems // ignore: cast_nullable_to_non_nullable
              as List<SampleItem>?,
    ));
  }
}

// dart format on
