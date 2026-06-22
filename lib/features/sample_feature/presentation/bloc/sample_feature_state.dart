part of 'sample_feature_bloc.dart';

@freezed
sealed class SampleFeatureState with _$SampleFeatureState {
  const factory SampleFeatureState({
    required SampleFeatureStatus status,
    List<SampleItem>? sampleItems,
  }) = _SampleFeatureState;

  factory SampleFeatureState.initial() 
    => const SampleFeatureState(status: SampleFeatureStatus.initial);

  const SampleFeatureState._();
}

enum SampleFeatureStatus {
  initial,
  loading,
  loaded,
  error,
}
