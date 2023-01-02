// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherFetchState {
  String get selectedCityId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherInterface currentWeather, String selectedCityId)
        hasData,
    required TResult Function(String selectedCityId) loading,
    required TResult Function(String selectedCityId, String? message) error,
    required TResult Function(String selectedCityId, String? message)
        noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult? Function(String selectedCityId)? loading,
    TResult? Function(String selectedCityId, String? message)? error,
    TResult? Function(String selectedCityId, String? message)?
        noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult Function(String selectedCityId)? loading,
    TResult Function(String selectedCityId, String? message)? error,
    TResult Function(String selectedCityId, String? message)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherData value) hasData,
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherData value)? hasData,
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherData value)? hasData,
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherFetchStateCopyWith<WeatherFetchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFetchStateCopyWith<$Res> {
  factory $WeatherFetchStateCopyWith(
          WeatherFetchState value, $Res Function(WeatherFetchState) then) =
      _$WeatherFetchStateCopyWithImpl<$Res, WeatherFetchState>;
  @useResult
  $Res call({String selectedCityId});
}

/// @nodoc
class _$WeatherFetchStateCopyWithImpl<$Res, $Val extends WeatherFetchState>
    implements $WeatherFetchStateCopyWith<$Res> {
  _$WeatherFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCityId = null,
  }) {
    return _then(_value.copyWith(
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDataCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_WeatherDataCopyWith(
          _$_WeatherData value, $Res Function(_$_WeatherData) then) =
      __$$_WeatherDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherInterface currentWeather, String selectedCityId});
}

/// @nodoc
class __$$_WeatherDataCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_WeatherData>
    implements _$$_WeatherDataCopyWith<$Res> {
  __$$_WeatherDataCopyWithImpl(
      _$_WeatherData _value, $Res Function(_$_WeatherData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
    Object? selectedCityId = null,
  }) {
    return _then(_$_WeatherData(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherInterface,
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherData extends _WeatherData {
  const _$_WeatherData(
      {required this.currentWeather, required this.selectedCityId})
      : super._();

  @override
  final WeatherInterface currentWeather;
  @override
  final String selectedCityId;

  @override
  String toString() {
    return 'WeatherFetchState.hasData(currentWeather: $currentWeather, selectedCityId: $selectedCityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherData &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather, selectedCityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      __$$_WeatherDataCopyWithImpl<_$_WeatherData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherInterface currentWeather, String selectedCityId)
        hasData,
    required TResult Function(String selectedCityId) loading,
    required TResult Function(String selectedCityId, String? message) error,
    required TResult Function(String selectedCityId, String? message)
        noConnectionError,
  }) {
    return hasData(currentWeather, selectedCityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult? Function(String selectedCityId)? loading,
    TResult? Function(String selectedCityId, String? message)? error,
    TResult? Function(String selectedCityId, String? message)?
        noConnectionError,
  }) {
    return hasData?.call(currentWeather, selectedCityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult Function(String selectedCityId)? loading,
    TResult Function(String selectedCityId, String? message)? error,
    TResult Function(String selectedCityId, String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(currentWeather, selectedCityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherData value) hasData,
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherData value)? hasData,
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherData value)? hasData,
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _WeatherData extends WeatherFetchState {
  const factory _WeatherData(
      {required final WeatherInterface currentWeather,
      required final String selectedCityId}) = _$_WeatherData;
  const _WeatherData._() : super._();

  WeatherInterface get currentWeather;
  @override
  String get selectedCityId;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingWeatherDataCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_LoadingWeatherDataCopyWith(_$_LoadingWeatherData value,
          $Res Function(_$_LoadingWeatherData) then) =
      __$$_LoadingWeatherDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId});
}

/// @nodoc
class __$$_LoadingWeatherDataCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_LoadingWeatherData>
    implements _$$_LoadingWeatherDataCopyWith<$Res> {
  __$$_LoadingWeatherDataCopyWithImpl(
      _$_LoadingWeatherData _value, $Res Function(_$_LoadingWeatherData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCityId = null,
  }) {
    return _then(_$_LoadingWeatherData(
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadingWeatherData extends _LoadingWeatherData {
  const _$_LoadingWeatherData({required this.selectedCityId}) : super._();

  @override
  final String selectedCityId;

  @override
  String toString() {
    return 'WeatherFetchState.loading(selectedCityId: $selectedCityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingWeatherData &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingWeatherDataCopyWith<_$_LoadingWeatherData> get copyWith =>
      __$$_LoadingWeatherDataCopyWithImpl<_$_LoadingWeatherData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherInterface currentWeather, String selectedCityId)
        hasData,
    required TResult Function(String selectedCityId) loading,
    required TResult Function(String selectedCityId, String? message) error,
    required TResult Function(String selectedCityId, String? message)
        noConnectionError,
  }) {
    return loading(selectedCityId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult? Function(String selectedCityId)? loading,
    TResult? Function(String selectedCityId, String? message)? error,
    TResult? Function(String selectedCityId, String? message)?
        noConnectionError,
  }) {
    return loading?.call(selectedCityId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult Function(String selectedCityId)? loading,
    TResult Function(String selectedCityId, String? message)? error,
    TResult Function(String selectedCityId, String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedCityId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherData value) hasData,
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherData value)? hasData,
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherData value)? hasData,
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingWeatherData extends WeatherFetchState {
  const factory _LoadingWeatherData({required final String selectedCityId}) =
      _$_LoadingWeatherData;
  const _LoadingWeatherData._() : super._();

  @override
  String get selectedCityId;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingWeatherDataCopyWith<_$_LoadingWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorWeatherFetchingCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_ErrorWeatherFetchingCopyWith(_$_ErrorWeatherFetching value,
          $Res Function(_$_ErrorWeatherFetching) then) =
      __$$_ErrorWeatherFetchingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId, String? message});
}

/// @nodoc
class __$$_ErrorWeatherFetchingCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_ErrorWeatherFetching>
    implements _$$_ErrorWeatherFetchingCopyWith<$Res> {
  __$$_ErrorWeatherFetchingCopyWithImpl(_$_ErrorWeatherFetching _value,
      $Res Function(_$_ErrorWeatherFetching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCityId = null,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorWeatherFetching(
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorWeatherFetching extends _ErrorWeatherFetching {
  const _$_ErrorWeatherFetching({required this.selectedCityId, this.message})
      : super._();

  @override
  final String selectedCityId;
  @override
  final String? message;

  @override
  String toString() {
    return 'WeatherFetchState.error(selectedCityId: $selectedCityId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorWeatherFetching &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorWeatherFetchingCopyWith<_$_ErrorWeatherFetching> get copyWith =>
      __$$_ErrorWeatherFetchingCopyWithImpl<_$_ErrorWeatherFetching>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherInterface currentWeather, String selectedCityId)
        hasData,
    required TResult Function(String selectedCityId) loading,
    required TResult Function(String selectedCityId, String? message) error,
    required TResult Function(String selectedCityId, String? message)
        noConnectionError,
  }) {
    return error(selectedCityId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult? Function(String selectedCityId)? loading,
    TResult? Function(String selectedCityId, String? message)? error,
    TResult? Function(String selectedCityId, String? message)?
        noConnectionError,
  }) {
    return error?.call(selectedCityId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult Function(String selectedCityId)? loading,
    TResult Function(String selectedCityId, String? message)? error,
    TResult Function(String selectedCityId, String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(selectedCityId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherData value) hasData,
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherData value)? hasData,
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherData value)? hasData,
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorWeatherFetching extends WeatherFetchState {
  const factory _ErrorWeatherFetching(
      {required final String selectedCityId,
      final String? message}) = _$_ErrorWeatherFetching;
  const _ErrorWeatherFetching._() : super._();

  @override
  String get selectedCityId;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorWeatherFetchingCopyWith<_$_ErrorWeatherFetching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionErrorCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_NoConnectionErrorCopyWith(_$_NoConnectionError value,
          $Res Function(_$_NoConnectionError) then) =
      __$$_NoConnectionErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId, String? message});
}

/// @nodoc
class __$$_NoConnectionErrorCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_NoConnectionError>
    implements _$$_NoConnectionErrorCopyWith<$Res> {
  __$$_NoConnectionErrorCopyWithImpl(
      _$_NoConnectionError _value, $Res Function(_$_NoConnectionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCityId = null,
    Object? message = freezed,
  }) {
    return _then(_$_NoConnectionError(
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoConnectionError extends _NoConnectionError {
  const _$_NoConnectionError({required this.selectedCityId, this.message})
      : super._();

  @override
  final String selectedCityId;
  @override
  final String? message;

  @override
  String toString() {
    return 'WeatherFetchState.noConnectionError(selectedCityId: $selectedCityId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoConnectionError &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoConnectionErrorCopyWith<_$_NoConnectionError> get copyWith =>
      __$$_NoConnectionErrorCopyWithImpl<_$_NoConnectionError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            WeatherInterface currentWeather, String selectedCityId)
        hasData,
    required TResult Function(String selectedCityId) loading,
    required TResult Function(String selectedCityId, String? message) error,
    required TResult Function(String selectedCityId, String? message)
        noConnectionError,
  }) {
    return noConnectionError(selectedCityId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult? Function(String selectedCityId)? loading,
    TResult? Function(String selectedCityId, String? message)? error,
    TResult? Function(String selectedCityId, String? message)?
        noConnectionError,
  }) {
    return noConnectionError?.call(selectedCityId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeatherInterface currentWeather, String selectedCityId)?
        hasData,
    TResult Function(String selectedCityId)? loading,
    TResult Function(String selectedCityId, String? message)? error,
    TResult Function(String selectedCityId, String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(selectedCityId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherData value) hasData,
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return noConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherData value)? hasData,
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return noConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherData value)? hasData,
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionError extends WeatherFetchState {
  const factory _NoConnectionError(
      {required final String selectedCityId,
      final String? message}) = _$_NoConnectionError;
  const _NoConnectionError._() : super._();

  @override
  String get selectedCityId;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoConnectionErrorCopyWith<_$_NoConnectionError> get copyWith =>
      throw _privateConstructorUsedError;
}
