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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Weather currentWeather) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Weather currentWeather)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Weather currentWeather)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherData value) $default, {
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherData value)? $default, {
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherData value)? $default, {
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFetchStateCopyWith<$Res> {
  factory $WeatherFetchStateCopyWith(
          WeatherFetchState value, $Res Function(WeatherFetchState) then) =
      _$WeatherFetchStateCopyWithImpl<$Res, WeatherFetchState>;
}

/// @nodoc
class _$WeatherFetchStateCopyWithImpl<$Res, $Val extends WeatherFetchState>
    implements $WeatherFetchStateCopyWith<$Res> {
  _$WeatherFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeatherDataCopyWith<$Res> {
  factory _$$_WeatherDataCopyWith(
          _$_WeatherData value, $Res Function(_$_WeatherData) then) =
      __$$_WeatherDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather currentWeather});
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
  }) {
    return _then(_$_WeatherData(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_WeatherData implements _WeatherData {
  const _$_WeatherData({required this.currentWeather});

  @override
  final Weather currentWeather;

  @override
  String toString() {
    return 'WeatherFetchState(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherData &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      __$$_WeatherDataCopyWithImpl<_$_WeatherData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Weather currentWeather) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return $default(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Weather currentWeather)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return $default?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Weather currentWeather)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherData value) $default, {
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherData value)? $default, {
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherData value)? $default, {
    TResult Function(_LoadingWeatherData value)? loading,
    TResult Function(_ErrorWeatherFetching value)? error,
    TResult Function(_NoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _WeatherData implements WeatherFetchState {
  const factory _WeatherData({required final Weather currentWeather}) =
      _$_WeatherData;

  Weather get currentWeather;
  @JsonKey(ignore: true)
  _$$_WeatherDataCopyWith<_$_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingWeatherDataCopyWith<$Res> {
  factory _$$_LoadingWeatherDataCopyWith(_$_LoadingWeatherData value,
          $Res Function(_$_LoadingWeatherData) then) =
      __$$_LoadingWeatherDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingWeatherDataCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_LoadingWeatherData>
    implements _$$_LoadingWeatherDataCopyWith<$Res> {
  __$$_LoadingWeatherDataCopyWithImpl(
      _$_LoadingWeatherData _value, $Res Function(_$_LoadingWeatherData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingWeatherData implements _LoadingWeatherData {
  const _$_LoadingWeatherData();

  @override
  String toString() {
    return 'WeatherFetchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingWeatherData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Weather currentWeather) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Weather currentWeather)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Weather currentWeather)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherData value) $default, {
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherData value)? $default, {
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherData value)? $default, {
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

abstract class _LoadingWeatherData implements WeatherFetchState {
  const factory _LoadingWeatherData() = _$_LoadingWeatherData;
}

/// @nodoc
abstract class _$$_ErrorWeatherFetchingCopyWith<$Res> {
  factory _$$_ErrorWeatherFetchingCopyWith(_$_ErrorWeatherFetching value,
          $Res Function(_$_ErrorWeatherFetching) then) =
      __$$_ErrorWeatherFetchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
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
    Object? message = freezed,
  }) {
    return _then(_$_ErrorWeatherFetching(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorWeatherFetching implements _ErrorWeatherFetching {
  const _$_ErrorWeatherFetching({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'WeatherFetchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorWeatherFetching &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorWeatherFetchingCopyWith<_$_ErrorWeatherFetching> get copyWith =>
      __$$_ErrorWeatherFetchingCopyWithImpl<_$_ErrorWeatherFetching>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Weather currentWeather) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Weather currentWeather)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Weather currentWeather)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherData value) $default, {
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherData value)? $default, {
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherData value)? $default, {
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

abstract class _ErrorWeatherFetching implements WeatherFetchState {
  const factory _ErrorWeatherFetching({final String? message}) =
      _$_ErrorWeatherFetching;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ErrorWeatherFetchingCopyWith<_$_ErrorWeatherFetching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NoConnectionErrorCopyWith<$Res> {
  factory _$$_NoConnectionErrorCopyWith(_$_NoConnectionError value,
          $Res Function(_$_NoConnectionError) then) =
      __$$_NoConnectionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
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
    Object? message = freezed,
  }) {
    return _then(_$_NoConnectionError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NoConnectionError implements _NoConnectionError {
  const _$_NoConnectionError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'WeatherFetchState.noConnectionError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoConnectionError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoConnectionErrorCopyWith<_$_NoConnectionError> get copyWith =>
      __$$_NoConnectionErrorCopyWithImpl<_$_NoConnectionError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Weather currentWeather) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return noConnectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Weather currentWeather)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return noConnectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Weather currentWeather)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WeatherData value) $default, {
    required TResult Function(_LoadingWeatherData value) loading,
    required TResult Function(_ErrorWeatherFetching value) error,
    required TResult Function(_NoConnectionError value) noConnectionError,
  }) {
    return noConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WeatherData value)? $default, {
    TResult? Function(_LoadingWeatherData value)? loading,
    TResult? Function(_ErrorWeatherFetching value)? error,
    TResult? Function(_NoConnectionError value)? noConnectionError,
  }) {
    return noConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WeatherData value)? $default, {
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

abstract class _NoConnectionError implements WeatherFetchState {
  const factory _NoConnectionError({final String? message}) =
      _$_NoConnectionError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_NoConnectionErrorCopyWith<_$_NoConnectionError> get copyWith =>
      throw _privateConstructorUsedError;
}
