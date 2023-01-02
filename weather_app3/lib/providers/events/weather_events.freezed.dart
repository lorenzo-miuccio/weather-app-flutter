// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  String get cityId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId) fetchRequested,
    required TResult Function(String cityId) detailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId)? fetchRequested,
    TResult? Function(String cityId)? detailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId)? fetchRequested,
    TResult Function(String cityId)? detailsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchReq value) fetchRequested,
    required TResult Function(WeatherDetailsReq value) detailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherFetchReq value)? fetchRequested,
    TResult? Function(WeatherDetailsReq value)? detailsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchReq value)? fetchRequested,
    TResult Function(WeatherDetailsReq value)? detailsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({String cityId});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_value.copyWith(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherFetchReqCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$WeatherFetchReqCopyWith(
          _$WeatherFetchReq value, $Res Function(_$WeatherFetchReq) then) =
      __$$WeatherFetchReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityId});
}

/// @nodoc
class __$$WeatherFetchReqCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherFetchReq>
    implements _$$WeatherFetchReqCopyWith<$Res> {
  __$$WeatherFetchReqCopyWithImpl(
      _$WeatherFetchReq _value, $Res Function(_$WeatherFetchReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_$WeatherFetchReq(
      null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherFetchReq implements WeatherFetchReq {
  const _$WeatherFetchReq(this.cityId);

  @override
  final String cityId;

  @override
  String toString() {
    return 'WeatherEvent.fetchRequested(cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherFetchReq &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherFetchReqCopyWith<_$WeatherFetchReq> get copyWith =>
      __$$WeatherFetchReqCopyWithImpl<_$WeatherFetchReq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId) fetchRequested,
    required TResult Function(String cityId) detailsRequested,
  }) {
    return fetchRequested(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId)? fetchRequested,
    TResult? Function(String cityId)? detailsRequested,
  }) {
    return fetchRequested?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId)? fetchRequested,
    TResult Function(String cityId)? detailsRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchReq value) fetchRequested,
    required TResult Function(WeatherDetailsReq value) detailsRequested,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherFetchReq value)? fetchRequested,
    TResult? Function(WeatherDetailsReq value)? detailsRequested,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchReq value)? fetchRequested,
    TResult Function(WeatherDetailsReq value)? detailsRequested,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class WeatherFetchReq implements WeatherEvent {
  const factory WeatherFetchReq(final String cityId) = _$WeatherFetchReq;

  @override
  String get cityId;
  @override
  @JsonKey(ignore: true)
  _$$WeatherFetchReqCopyWith<_$WeatherFetchReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherDetailsReqCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$WeatherDetailsReqCopyWith(
          _$WeatherDetailsReq value, $Res Function(_$WeatherDetailsReq) then) =
      __$$WeatherDetailsReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityId});
}

/// @nodoc
class __$$WeatherDetailsReqCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$WeatherDetailsReq>
    implements _$$WeatherDetailsReqCopyWith<$Res> {
  __$$WeatherDetailsReqCopyWithImpl(
      _$WeatherDetailsReq _value, $Res Function(_$WeatherDetailsReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
  }) {
    return _then(_$WeatherDetailsReq(
      null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherDetailsReq implements WeatherDetailsReq {
  const _$WeatherDetailsReq(this.cityId);

  @override
  final String cityId;

  @override
  String toString() {
    return 'WeatherEvent.detailsRequested(cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDetailsReq &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDetailsReqCopyWith<_$WeatherDetailsReq> get copyWith =>
      __$$WeatherDetailsReqCopyWithImpl<_$WeatherDetailsReq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cityId) fetchRequested,
    required TResult Function(String cityId) detailsRequested,
  }) {
    return detailsRequested(cityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cityId)? fetchRequested,
    TResult? Function(String cityId)? detailsRequested,
  }) {
    return detailsRequested?.call(cityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cityId)? fetchRequested,
    TResult Function(String cityId)? detailsRequested,
    required TResult orElse(),
  }) {
    if (detailsRequested != null) {
      return detailsRequested(cityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherFetchReq value) fetchRequested,
    required TResult Function(WeatherDetailsReq value) detailsRequested,
  }) {
    return detailsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherFetchReq value)? fetchRequested,
    TResult? Function(WeatherDetailsReq value)? detailsRequested,
  }) {
    return detailsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherFetchReq value)? fetchRequested,
    TResult Function(WeatherDetailsReq value)? detailsRequested,
    required TResult orElse(),
  }) {
    if (detailsRequested != null) {
      return detailsRequested(this);
    }
    return orElse();
  }
}

abstract class WeatherDetailsReq implements WeatherEvent {
  const factory WeatherDetailsReq(final String cityId) = _$WeatherDetailsReq;

  @override
  String get cityId;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDetailsReqCopyWith<_$WeatherDetailsReq> get copyWith =>
      throw _privateConstructorUsedError;
}
