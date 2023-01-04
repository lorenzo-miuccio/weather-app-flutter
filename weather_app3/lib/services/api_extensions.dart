import 'package:dio/dio.dart';
import 'package:weather_app/exceptions/api_exceptions.dart';

// extension CatchApiRequestDataErrorsExtension<R> on Future<R> {
//   Future<Either<DataError, R>> catchApiRequestErrors() => then<Either<DataError, R>>((value) => Right(value)).catchError((e, s) {
//         switch (e.runtimeType) {
//           case DioError:
//             e = e as DioError;
//             if (e.type == DioErrorType.response) {
//               final res = e.response;
//               return Left<DataError, R>(DataError.httpStatus(message: '${res?.statusCode}'));
//             } else {
//               return Left<DataError, R>(const DataError.noConnection());
//             }
//           default:
//             Left(const DataError.generic());
//         }
//       });
// }

extension CatchApiRequestErrorsExtension<T> on Future<T> {
  Future<T> catchApiRequestErrors() => catchError((e, s) {
        switch (e.runtimeType) {
          case DioError:
            e = e as DioError;
            if (e.type == DioErrorType.response) {
              final res = e.response;
              throw HttpStatusException('${res?.statusCode}');
            } else {
              throw NoConnectionException(e.toString());
            }
          default:
            throw Exception(e.toString());
        }
      });

  Future<T> catchDbOperationsErrors() => catchError((e, s) {
        throw Exception('Db error.');
      });
}
