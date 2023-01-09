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
  TResult when<TResult extends Object?>({
    required TResult Function(Weather currentWeather) hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather currentWeather)? hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather currentWeather)? hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherFetchDataState value) hasData,
    required TResult Function(_WeatherFetchLoadingState value) loading,
    required TResult Function(_WeatherFetchError value) error,
    required TResult Function(_WeatherFetchNoConnectionError value)
        noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherFetchDataState value)? hasData,
    TResult? Function(_WeatherFetchLoadingState value)? loading,
    TResult? Function(_WeatherFetchError value)? error,
    TResult? Function(_WeatherFetchNoConnectionError value)? noConnectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherFetchDataState value)? hasData,
    TResult Function(_WeatherFetchLoadingState value)? loading,
    TResult Function(_WeatherFetchError value)? error,
    TResult Function(_WeatherFetchNoConnectionError value)? noConnectionError,
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
abstract class _$$_WeatherFetchDataStateCopyWith<$Res> {
  factory _$$_WeatherFetchDataStateCopyWith(_$_WeatherFetchDataState value,
          $Res Function(_$_WeatherFetchDataState) then) =
      __$$_WeatherFetchDataStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather currentWeather});
}

/// @nodoc
class __$$_WeatherFetchDataStateCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_WeatherFetchDataState>
    implements _$$_WeatherFetchDataStateCopyWith<$Res> {
  __$$_WeatherFetchDataStateCopyWithImpl(_$_WeatherFetchDataState _value,
      $Res Function(_$_WeatherFetchDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$_WeatherFetchDataState(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_WeatherFetchDataState implements _WeatherFetchDataState {
  const _$_WeatherFetchDataState({required this.currentWeather});

  @override
  final Weather currentWeather;

  @override
  String toString() {
    return 'WeatherFetchState.hasData(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherFetchDataState &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchDataStateCopyWith<_$_WeatherFetchDataState> get copyWith =>
      __$$_WeatherFetchDataStateCopyWithImpl<_$_WeatherFetchDataState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather currentWeather) hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return hasData(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather currentWeather)? hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return hasData?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather currentWeather)? hasData,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(String? message)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherFetchDataState value) hasData,
    required TResult Function(_WeatherFetchLoadingState value) loading,
    required TResult Function(_WeatherFetchError value) error,
    required TResult Function(_WeatherFetchNoConnectionError value)
        noConnectionError,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherFetchDataState value)? hasData,
    TResult? Function(_WeatherFetchLoadingState value)? loading,
    TResult? Function(_WeatherFetchError value)? error,
    TResult? Function(_WeatherFetchNoConnectionError value)? noConnectionError,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherFetchDataState value)? hasData,
    TResult Function(_WeatherFetchLoadingState value)? loading,
    TResult Function(_WeatherFetchError value)? error,
    TResult Function(_WeatherFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _WeatherFetchDataState implements WeatherFetchState {
  const factory _WeatherFetchDataState(
      {required final Weather currentWeather}) = _$_WeatherFetchDataState;

  Weather get currentWeather;
  @JsonKey(ignore: true)
  _$$_WeatherFetchDataStateCopyWith<_$_WeatherFetchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFetchLoadingStateCopyWith<$Res> {
  factory _$$_WeatherFetchLoadingStateCopyWith(
          _$_WeatherFetchLoadingState value,
          $Res Function(_$_WeatherFetchLoadingState) then) =
      __$$_WeatherFetchLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherFetchLoadingStateCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_WeatherFetchLoadingState>
    implements _$$_WeatherFetchLoadingStateCopyWith<$Res> {
  __$$_WeatherFetchLoadingStateCopyWithImpl(_$_WeatherFetchLoadingState _value,
      $Res Function(_$_WeatherFetchLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherFetchLoadingState implements _WeatherFetchLoadingState {
  const _$_WeatherFetchLoadingState();

  @override
  String toString() {
    return 'WeatherFetchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherFetchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather currentWeather) hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather currentWeather)? hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather currentWeather)? hasData,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherFetchDataState value) hasData,
    required TResult Function(_WeatherFetchLoadingState value) loading,
    required TResult Function(_WeatherFetchError value) error,
    required TResult Function(_WeatherFetchNoConnectionError value)
        noConnectionError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherFetchDataState value)? hasData,
    TResult? Function(_WeatherFetchLoadingState value)? loading,
    TResult? Function(_WeatherFetchError value)? error,
    TResult? Function(_WeatherFetchNoConnectionError value)? noConnectionError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherFetchDataState value)? hasData,
    TResult Function(_WeatherFetchLoadingState value)? loading,
    TResult Function(_WeatherFetchError value)? error,
    TResult Function(_WeatherFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherFetchLoadingState implements WeatherFetchState {
  const factory _WeatherFetchLoadingState() = _$_WeatherFetchLoadingState;
}

/// @nodoc
abstract class _$$_WeatherFetchErrorCopyWith<$Res> {
  factory _$$_WeatherFetchErrorCopyWith(_$_WeatherFetchError value,
          $Res Function(_$_WeatherFetchError) then) =
      __$$_WeatherFetchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_WeatherFetchErrorCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_WeatherFetchError>
    implements _$$_WeatherFetchErrorCopyWith<$Res> {
  __$$_WeatherFetchErrorCopyWithImpl(
      _$_WeatherFetchError _value, $Res Function(_$_WeatherFetchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_WeatherFetchError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherFetchError implements _WeatherFetchError {
  const _$_WeatherFetchError({this.message});

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
            other is _$_WeatherFetchError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchErrorCopyWith<_$_WeatherFetchError> get copyWith =>
      __$$_WeatherFetchErrorCopyWithImpl<_$_WeatherFetchError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather currentWeather) hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather currentWeather)? hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather currentWeather)? hasData,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherFetchDataState value) hasData,
    required TResult Function(_WeatherFetchLoadingState value) loading,
    required TResult Function(_WeatherFetchError value) error,
    required TResult Function(_WeatherFetchNoConnectionError value)
        noConnectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherFetchDataState value)? hasData,
    TResult? Function(_WeatherFetchLoadingState value)? loading,
    TResult? Function(_WeatherFetchError value)? error,
    TResult? Function(_WeatherFetchNoConnectionError value)? noConnectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherFetchDataState value)? hasData,
    TResult Function(_WeatherFetchLoadingState value)? loading,
    TResult Function(_WeatherFetchError value)? error,
    TResult Function(_WeatherFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherFetchError implements WeatherFetchState {
  const factory _WeatherFetchError({final String? message}) =
      _$_WeatherFetchError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_WeatherFetchErrorCopyWith<_$_WeatherFetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFetchNoConnectionErrorCopyWith<$Res> {
  factory _$$_WeatherFetchNoConnectionErrorCopyWith(
          _$_WeatherFetchNoConnectionError value,
          $Res Function(_$_WeatherFetchNoConnectionError) then) =
      __$$_WeatherFetchNoConnectionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_WeatherFetchNoConnectionErrorCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res,
        _$_WeatherFetchNoConnectionError>
    implements _$$_WeatherFetchNoConnectionErrorCopyWith<$Res> {
  __$$_WeatherFetchNoConnectionErrorCopyWithImpl(
      _$_WeatherFetchNoConnectionError _value,
      $Res Function(_$_WeatherFetchNoConnectionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_WeatherFetchNoConnectionError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherFetchNoConnectionError
    implements _WeatherFetchNoConnectionError {
  const _$_WeatherFetchNoConnectionError({this.message});

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
            other is _$_WeatherFetchNoConnectionError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchNoConnectionErrorCopyWith<_$_WeatherFetchNoConnectionError>
      get copyWith => __$$_WeatherFetchNoConnectionErrorCopyWithImpl<
          _$_WeatherFetchNoConnectionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather currentWeather) hasData,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(String? message) noConnectionError,
  }) {
    return noConnectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather currentWeather)? hasData,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(String? message)? noConnectionError,
  }) {
    return noConnectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather currentWeather)? hasData,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherFetchDataState value) hasData,
    required TResult Function(_WeatherFetchLoadingState value) loading,
    required TResult Function(_WeatherFetchError value) error,
    required TResult Function(_WeatherFetchNoConnectionError value)
        noConnectionError,
  }) {
    return noConnectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherFetchDataState value)? hasData,
    TResult? Function(_WeatherFetchLoadingState value)? loading,
    TResult? Function(_WeatherFetchError value)? error,
    TResult? Function(_WeatherFetchNoConnectionError value)? noConnectionError,
  }) {
    return noConnectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherFetchDataState value)? hasData,
    TResult Function(_WeatherFetchLoadingState value)? loading,
    TResult Function(_WeatherFetchError value)? error,
    TResult Function(_WeatherFetchNoConnectionError value)? noConnectionError,
    required TResult orElse(),
  }) {
    if (noConnectionError != null) {
      return noConnectionError(this);
    }
    return orElse();
  }
}

abstract class _WeatherFetchNoConnectionError implements WeatherFetchState {
  const factory _WeatherFetchNoConnectionError({final String? message}) =
      _$_WeatherFetchNoConnectionError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_WeatherFetchNoConnectionErrorCopyWith<_$_WeatherFetchNoConnectionError>
      get copyWith => throw _privateConstructorUsedError;
}
