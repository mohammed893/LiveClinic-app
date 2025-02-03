import 'package:dio/dio.dart';

class DioHelper{
  static late Dio dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: '',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    required Map <String, dynamic>  data,

  }) async {
    dio.options.headers ={};
    return dio.post(
      url,
      data: data,

    );
  }

  static Future<Response> getData({
    required String url,
  }) async{
    return await  dio.get(
      url,
    );
  }
}