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
abstract class _$$_WeatherFetchDataStateCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_WeatherFetchDataStateCopyWith(_$_WeatherFetchDataState value,
          $Res Function(_$_WeatherFetchDataState) then) =
      __$$_WeatherFetchDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherInterface currentWeather, String selectedCityId});
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
    Object? selectedCityId = null,
  }) {
    return _then(_$_WeatherFetchDataState(
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

class _$_WeatherFetchDataState extends _WeatherFetchDataState {
  const _$_WeatherFetchDataState(
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
            other is _$_WeatherFetchDataState &&
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
  _$$_WeatherFetchDataStateCopyWith<_$_WeatherFetchDataState> get copyWith =>
      __$$_WeatherFetchDataStateCopyWithImpl<_$_WeatherFetchDataState>(
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

abstract class _WeatherFetchDataState extends WeatherFetchState {
  const factory _WeatherFetchDataState(
      {required final WeatherInterface currentWeather,
      required final String selectedCityId}) = _$_WeatherFetchDataState;
  const _WeatherFetchDataState._() : super._();

  WeatherInterface get currentWeather;
  @override
  String get selectedCityId;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherFetchDataStateCopyWith<_$_WeatherFetchDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFetchLoadingStateCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_WeatherFetchLoadingStateCopyWith(
          _$_WeatherFetchLoadingState value,
          $Res Function(_$_WeatherFetchLoadingState) then) =
      __$$_WeatherFetchLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId});
}

/// @nodoc
class __$$_WeatherFetchLoadingStateCopyWithImpl<$Res>
    extends _$WeatherFetchStateCopyWithImpl<$Res, _$_WeatherFetchLoadingState>
    implements _$$_WeatherFetchLoadingStateCopyWith<$Res> {
  __$$_WeatherFetchLoadingStateCopyWithImpl(_$_WeatherFetchLoadingState _value,
      $Res Function(_$_WeatherFetchLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCityId = null,
  }) {
    return _then(_$_WeatherFetchLoadingState(
      selectedCityId: null == selectedCityId
          ? _value.selectedCityId
          : selectedCityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherFetchLoadingState extends _WeatherFetchLoadingState {
  const _$_WeatherFetchLoadingState({required this.selectedCityId}) : super._();

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
            other is _$_WeatherFetchLoadingState &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchLoadingStateCopyWith<_$_WeatherFetchLoadingState>
      get copyWith => __$$_WeatherFetchLoadingStateCopyWithImpl<
          _$_WeatherFetchLoadingState>(this, _$identity);

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

abstract class _WeatherFetchLoadingState extends WeatherFetchState {
  const factory _WeatherFetchLoadingState(
      {required final String selectedCityId}) = _$_WeatherFetchLoadingState;
  const _WeatherFetchLoadingState._() : super._();

  @override
  String get selectedCityId;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherFetchLoadingStateCopyWith<_$_WeatherFetchLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFetchErrorCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_WeatherFetchErrorCopyWith(_$_WeatherFetchError value,
          $Res Function(_$_WeatherFetchError) then) =
      __$$_WeatherFetchErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId, String? message});
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
    Object? selectedCityId = null,
    Object? message = freezed,
  }) {
    return _then(_$_WeatherFetchError(
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

class _$_WeatherFetchError extends _WeatherFetchError {
  const _$_WeatherFetchError({required this.selectedCityId, this.message})
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
            other is _$_WeatherFetchError &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchErrorCopyWith<_$_WeatherFetchError> get copyWith =>
      __$$_WeatherFetchErrorCopyWithImpl<_$_WeatherFetchError>(
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

abstract class _WeatherFetchError extends WeatherFetchState {
  const factory _WeatherFetchError(
      {required final String selectedCityId,
      final String? message}) = _$_WeatherFetchError;
  const _WeatherFetchError._() : super._();

  @override
  String get selectedCityId;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherFetchErrorCopyWith<_$_WeatherFetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFetchNoConnectionErrorCopyWith<$Res>
    implements $WeatherFetchStateCopyWith<$Res> {
  factory _$$_WeatherFetchNoConnectionErrorCopyWith(
          _$_WeatherFetchNoConnectionError value,
          $Res Function(_$_WeatherFetchNoConnectionError) then) =
      __$$_WeatherFetchNoConnectionErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedCityId, String? message});
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
    Object? selectedCityId = null,
    Object? message = freezed,
  }) {
    return _then(_$_WeatherFetchNoConnectionError(
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

class _$_WeatherFetchNoConnectionError extends _WeatherFetchNoConnectionError {
  const _$_WeatherFetchNoConnectionError(
      {required this.selectedCityId, this.message})
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
            other is _$_WeatherFetchNoConnectionError &&
            (identical(other.selectedCityId, selectedCityId) ||
                other.selectedCityId == selectedCityId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCityId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherFetchNoConnectionErrorCopyWith<_$_WeatherFetchNoConnectionError>
      get copyWith => __$$_WeatherFetchNoConnectionErrorCopyWithImpl<
          _$_WeatherFetchNoConnectionError>(this, _$identity);

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

abstract class _WeatherFetchNoConnectionError extends WeatherFetchState {
  const factory _WeatherFetchNoConnectionError(
      {required final String selectedCityId,
      final String? message}) = _$_WeatherFetchNoConnectionError;
  const _WeatherFetchNoConnectionError._() : super._();

  @override
  String get selectedCityId;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherFetchNoConnectionErrorCopyWith<_$_WeatherFetchNoConnectionError>
      get copyWith => throw _privateConstructorUsedError;
}
