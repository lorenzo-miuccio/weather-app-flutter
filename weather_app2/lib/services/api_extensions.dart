import 'package:dio/dio.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';

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