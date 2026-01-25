part of 'sample_feature_bloc.dart';

sealed class SampleFeatureEvent extends Equatable{
  const SampleFeatureEvent();

  @override
  List<Object?> get props => [];
}

class InitEvent extends SampleFeatureEvent{
  const InitEvent();
}
