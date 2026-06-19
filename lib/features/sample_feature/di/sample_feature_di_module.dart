import 'package:scoped_di/scoped_di.dart';

import '../data/data_sources/remote/sample_feature_remote_data_source.dart';
import '../data/repositories/sample_feature_repository_impl.dart';
import '../domain/repository_interfaces/sample_feature_repository.dart';
import '../domain/usecases/get_sample_items_usecase.dart';
import '../presentation/bloc/sample_feature_bloc.dart';

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
