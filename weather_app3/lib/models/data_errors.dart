import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_errors.freezed.dart';

@freezed
class DataErrors with _$DataErrors {
  const DataErrors._();

  const factory DataErrors.httpStatus({String? message}) = _HttpStatusDataError;

  const factory DataErrors.noConnection() = _NoConnectionDataError;

  const factory DataErrors.generic({String? message}) = _GenericDataError;

  const factory DataErrors.db({String? message}) = _DatabaseError;

}
