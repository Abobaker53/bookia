import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'end_points.dart';
import 'local_keys.dart';
import 'local_storage.dart';

class DioHelper {
  static final Dio dio = Dio(BaseOptions(baseUrl: EndPoints.baseUrl));
  static Future<Either<String, Map<String, dynamic>>> post(
      {required String endPoint,
        Map<String, dynamic>? data,
        Map<String, dynamic>? headers,
        bool isFormData = true,
        bool isProtected = false,

      }) async {
    try {
      String? token;
      if (isProtected) {
        token = LocalStorage.getData(key:LocalKeys.Token);
      }
      var response = await dio.post(endPoint,
          data: isFormData ? FormData.fromMap(data ?? {}) : data,
          options: Options(headers: {
            if (isProtected) 'Authorization': 'Bearer $token',
            ...?headers
          }));
      return right(response.data as Map<String, dynamic>);
    } catch (e) {
      print(e.toString());
      String errorMsg = 'Something went wrong';
      if (e is DioException) {
        var errorResponse = e.response?.data as Map<String, dynamic>;
        errorMsg = errorResponse['message'];
        print(errorResponse['message']);
      }
      return left(errorMsg);
    }
  }
}