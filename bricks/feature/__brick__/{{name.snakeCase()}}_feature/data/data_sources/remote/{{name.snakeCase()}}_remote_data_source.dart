import 'dart:async';
import 'package:flutter_template/common/network/auth_rest_client.dart';
import 'package:flutter_template/common/utils/data_parser.dart';
import '../../models/some_data_response/some_data_response.dart';

abstract interface class {{name.pascalCase()}}RemoteDataSource {
  FutureOr<SomeDataResponse> getSomeData();
}

class {{name.pascalCase()}}RemoteDataSourceImpl
    implements {{name.pascalCase()}}RemoteDataSource {
  const {{name.pascalCase()}}RemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return _restClientService.get(
      'AppUrls.someData',
      parser: ObjectParser(SomeDataResponse.fromJson),
    );
  }
}

class {{name.pascalCase()}}RemoteDataSourceFake
    implements {{name.pascalCase()}}RemoteDataSource {
  const {{name.pascalCase()}}RemoteDataSourceFake();

  @override
  FutureOr<SomeDataResponse> getSomeData() {
    return SomeDataResponse();
  }
}
