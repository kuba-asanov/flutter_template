import 'dart:async';
import 'package:flutter_template/common/network/auth_rest_client.dart';
import 'package:flutter_template/common/utils/data_parser.dart';
import '../../models/sample_item_response/sample_item_response.dart';

abstract interface class SampleFeatureRemoteDataSource {
  FutureOr<List<SampleItemResponse>> getSampleItems();
}

class SampleFeatureRemoteDataSourceImpl
    implements SampleFeatureRemoteDataSource {
  const SampleFeatureRemoteDataSourceImpl({
    required AuthRestClient restClientService,
  }) : _restClientService = restClientService;

  final AuthRestClient _restClientService;

  @override
  FutureOr<List<SampleItemResponse>> getSampleItems() {
    return _restClientService.get(
      'AppUrls.sampleItems',
      parser: ListParser<SampleItemResponse>(
        SampleItemResponse.fromJson,
      ),
    );
  }
}

class SampleFeatureRemoteDataSourceFake
    implements SampleFeatureRemoteDataSource {
  const SampleFeatureRemoteDataSourceFake();

  @override
  FutureOr<List<SampleItemResponse>> getSampleItems() {
    return [
      const SampleItemResponse(id: 1),
      const SampleItemResponse(id: 2),
      const SampleItemResponse(id: 3),
    ];
  }
}
