import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import "dart:io";

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton(child: Text("获取数据"),onPressed: () {

        //普通使用
        // dioNetwork();

        //封装使用
        HTTPRequest.request("https://httpbin.org/get", parameters: {"name": "why", 'age': 18}, )
            .then((result) {
          print(result["args"]);
        });

        // HTTPRequest.request("https://httpbin.org/post",
        //     method: "post", parameters: {"name": "why", 'age': 18}).then((res) {
        //   print(res);
        // });

      },),
    );
  }
}

//dio网络请求封装
class HTTPConfig {
  static const baseURL = "https://httpbin.org";
  static const timeout = 5000;
  static const headers = {
    "token": "test"
  };
}

class HTTPRequest {

  static final baseOption = BaseOptions(
      baseUrl: HTTPConfig.baseURL,
      connectTimeout: HTTPConfig.timeout
  );

  static final Dio dio = Dio(baseOption);

  static Interceptor dioInter = InterceptorsWrapper(
      onRequest: (RequestOptions options) {
        //此处处理参数,请求拦截
        print("拦截请求");
      },
      onError: (DioError e) {
        //此处拦截错误，错误处理
        print("拦截错误");
      },
      onResponse: (Response response) {
        //拦截响应，响应处理
        print("拦截响应");
      }
  );

  static List<Interceptor> inters = [dioInter];

  static Future<T> request<T>(String url, {String method = "get", Map<String, dynamic> parameters, Interceptor interceptor }) async {
    final options = Options(
      method: method,

    );

    if (interceptor != null) {
      inters.add(interceptor);
    }
    if (!dio.interceptors.contains(inters)) {
      dio.interceptors.addAll(inters);
    }

    try {
      Response response = await dio.request<T>(url, queryParameters: parameters, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }

  }
}

// dio请求test
void dioNetwork() async {
  // 1.创建Dio请求对象
  final dio = Dio();

  // 2.发送网络请求
  final response = await dio.get("http://123.207.32.32:8000/api/v1/recommend");

  // 3.打印请求结果
  if (response.statusCode == HttpStatus.ok) {
    print(response.data);
  } else {
    print("请求失败：${response.statusCode}");
  }
}

