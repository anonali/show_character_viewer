// ignore_for_file: constant_identifier_names

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

import 'fake_json.dart';

const APIURL = String.fromEnvironment('CHARACTER_VIEWER_API');

class FakeDio extends Mock implements Dio {
  bool throwError = false;

  @override
  Future<Response<T>> get<T>(
    String path, {
    CancelToken? cancelToken,
    Object? data,
    void Function(int, int)? onReceiveProgress,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) async {
    if (throwError) {
      // If throwError is true, then throw a DioException
      throw DioException(
        requestOptions: RequestOptions(path: path),
        error: 'Simulated network error',
      );
    }

    return Response<T>(
      requestOptions: RequestOptions(path: path),
      data: mockResponseData as T,
      statusCode: 200,
    );
  }
}
