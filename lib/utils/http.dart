import 'package:dio/dio.dart';
import 'config.dart';

class HttpRequest {
  static BaseOptions baseOptions = BaseOptions(connectTimeout: timeOut);
  static Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url, {String method = 'get', Map<String, dynamic> params}) async {
    Options options = Options();
    options.method = method;

    // 发送网络请求
    try {
      Response response = await dio.request<T>(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      throw e;
    }
  }
}