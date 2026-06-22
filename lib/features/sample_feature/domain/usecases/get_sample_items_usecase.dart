// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:flutter_template/common/utils/base_usecase.dart';

import 'package:flutter_template/features/sample_feature/domain/models/sample_item.dart';
import 'package:flutter_template/features/sample_feature/domain/repository_interfaces/sample_feature_repository.dart';

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
