import 'package:flutter_template/features/sample_feature/data/data_sources/remote/sample_feature_remote_data_source.dart';
import 'package:flutter_template/features/sample_feature/data/repositories/sample_feature_repository_impl.dart';
import 'package:flutter_template/features/sample_feature/domain/repository_interfaces/sample_feature_repository.dart';
import 'package:flutter_template/features/sample_feature/domain/usecases/get_sample_items_usecase.dart';
import 'package:flutter_template/features/sample_feature/presentation/bloc/sample_feature_bloc.dart';
import 'package:scoped_di/scoped_di.dart';

class SampleFeatureDiModule extends DiModule {
  @override
  void setup(SyncRegistrar it) {
    it
      // Data
      //
      ..registerFactory<SampleFeatureRemoteDataSource>(
        // TODO replace to Impl:
        () => const SampleFeatureRemoteDataSourceFake(),
        // () => SampleFeatureRemoteDataSourceImpl(
        //   restClientService: get<AuthRestClient>(),
        // ),
      )
      ..registerFactory<SampleFeatureRepository>(
        () => SampleFeatureRepositoryImpl(
          remoteDataSource: get<SampleFeatureRemoteDataSource>(),
        ),
      )

      // Domain
      //
      ..registerFactory<GetSampleItemsUsecase>(
        () => GetSampleItemsUsecase(
          get<SampleFeatureRepository>(),
        ),
      )
      // Presentation
      //
      ..registerFactory<SampleFeatureBloc>(
        () => SampleFeatureBloc(
          getSampleItemsUsecase: get<GetSampleItemsUsecase>(),
        ),
      );
  }
}
