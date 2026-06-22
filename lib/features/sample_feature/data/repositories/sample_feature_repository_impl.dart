import 'dart:async';

import 'package:flutter_template/features/sample_feature/data/data_sources/remote/sample_feature_remote_data_source.dart';
import 'package:flutter_template/features/sample_feature/data/mappers/sample_item_mapper.dart';
import 'package:flutter_template/features/sample_feature/domain/models/sample_item.dart';
import 'package:flutter_template/features/sample_feature/domain/repository_interfaces/sample_feature_repository.dart';

class SampleFeatureRepositoryImpl implements SampleFeatureRepository {
  SampleFeatureRepositoryImpl({
    required SampleFeatureRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  
  final SampleFeatureRemoteDataSource _remoteDataSource;
  
  @override
  Future<List<SampleItem>> getSampleItems() async {
    final response = await _remoteDataSource.getSampleItems();
    return response.map((item) => item.toEntity()).toList();
  }
}
