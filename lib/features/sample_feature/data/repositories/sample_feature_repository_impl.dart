import 'dart:async';

import '../../domain/models/sample_item.dart';
import '../../domain/repository_interfaces/sample_feature_repository.dart';
import '../data_sources/remote/sample_feature_remote_data_source.dart';
import '../mappers/sample_item_mapper.dart';

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
