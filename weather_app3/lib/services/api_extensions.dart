import 'package:dio/dio.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';
import 'package:weather_app/models/data_errors.dart';
import 'package:weather_app/models/either.dart';

extension CatchApiRequestDataErrorsExtension<R> on Future<Either<DataErrors, R>>  {

  Future<Either<DataErrors, R>> catchApiRequestErrors() =>
      catchError((e, s) {
        switch (e.runtimeType) {
          case DioError:
            e = e as DioError;
            if (e.type == DioErrorType.response) {
              final res = e.response;
              return Either.left(DataErrors.httpStatus(message: '${res?.statusCode}'));
            } else {
              return Either.left(const DataErrors.noConnection());
            }
          default:
            Either.left(const DataErrors.generic());
        }
      });
}


extension CatchApiRequestErrorsExtension<T> on Future<T>  {

  Future<T> catchApiRequestErrors() =>
      catchError((e, s) {
        switch (e.runtimeType) {
          case DioError:
            e = e as DioError;
            if (e.type == DioErrorType.response) {
              final res = e.response;
              throw HttpStatusException('${res?.statusCode}');
            } else {
              throw ConnectionException(e.toString());
            }
          default:
            throw Exception(e.toString());
        }
      });
}