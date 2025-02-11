import 'package:dio/dio.dart';
import 'package:flutter_template/common/network/auth_interceptor.dart';
import 'package:flutter_template/common/network/network_error_handler.dart';
import 'package:flutter_template/common/network/rest_client.dart';
import 'package:flutter_template/core/storage/secure_storage.dart';

class AuthRestClient extends RestClient {
  AuthRestClient(
    this._client,
    SecureStorage secureStorage,
  ) : super(_client, errorHandler: NetworkErrorHandlerImpl()) {
    _client.interceptors.add(AuthInterceptor(
      tokenGetter: () => secureStorage.getValue(SecureStorageKey.authToken),
    ));
  }

  final Dio _client;
}
