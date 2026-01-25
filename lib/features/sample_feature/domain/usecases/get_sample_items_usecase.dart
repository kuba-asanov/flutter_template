// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:flutter_template/common/utils/base_usecase.dart';

import '../models/sample_item.dart';
import '../repository_interfaces/sample_feature_repository.dart';

class GetSampleItemsUsecase
    extends BaseUseCase<List<SampleItem>, GetSampleItemsParams>{
  GetSampleItemsUsecase(SampleFeatureRepository sampleFeatureRepository): 
    _repository = sampleFeatureRepository;

  final SampleFeatureRepository _repository;

  @override
  FutureOr<List<SampleItem>> makeRequest(GetSampleItemsParams params) {
    return _repository.getSampleItems();
  }
}

class GetSampleItemsParams {
  GetSampleItemsParams();
}
