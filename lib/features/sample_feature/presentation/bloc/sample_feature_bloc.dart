import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/sample_item.dart';
import '../../domain/usecases/get_sample_items_usecase.dart';

part 'sample_feature_bloc.freezed.dart';
part 'sample_feature_event.dart';
part 'sample_feature_state.dart';

class SampleFeatureBloc extends Bloc<SampleFeatureEvent, SampleFeatureState> {
  SampleFeatureBloc({
    required GetSampleItemsUsecase getSampleItemsUsecase,
  })  : _getSampleItemsUsecase = getSampleItemsUsecase,
        super(SampleFeatureState.initial()) {
    on<InitEvent>(_onInit);
  }

  final GetSampleItemsUsecase _getSampleItemsUsecase;

  Future<void> _onInit(InitEvent event, Emitter emit) async {
    emit(SampleFeatureState(status: SampleFeatureStatus.loading));

    final result = await _getSampleItemsUsecase.invoke(GetSampleItemsParams());

    result.fold(
      onFailure: (failure) {
        emit(SampleFeatureState(status: SampleFeatureStatus.error));
      },
      onSuccess: (data) => emit(SampleFeatureState(
        status: SampleFeatureStatus.loaded,
        sampleItems: data,
      )),
    );
  }
}
