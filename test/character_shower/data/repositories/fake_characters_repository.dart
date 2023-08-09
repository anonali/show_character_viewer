import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';

import 'fake_json.dart';

const APIURL = String.fromEnvironment('CHARACTER_VIEWER_API');

class FakeDio extends Mock implements Dio {
  // Add any specific behavior you need for your tests.
  // For example, if you want to fake the behavior of the `get` method:
  bool throwError = false; // Add this line to define the throwError property

  @override
  Future<Response<T>> get<T>(
    String path, {
    CancelToken? cancelToken,
    Object? data,
    void Function(int, int)? onReceiveProgress,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) async {
    // Here's an example: always return a fake response for any GET request.
    // You can adjust this as needed for your tests.
    if (throwError) {
      // If throwError is true, then throw a DioException
      throw DioException(
        response: null,
        requestOptions: RequestOptions(path: path),
        error: 'Simulated network error',
      );
    }

    return Response<T>(
      requestOptions: RequestOptions(path: path),
      data: mockResponseData
          as T, // assuming mockResponseData is the response you want to return
      statusCode: 200,
    );
  }
}


// Example mock data (you should replace this with actual mock data)