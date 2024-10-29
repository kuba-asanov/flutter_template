iimport 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_some_data_{{#isUseModelAsList}}list_{{/isUseModelAsList}}usecase.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends BaseBloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc({
    required GetSomeDataUsecase getSomeDataUsecase,
  }): 
      _getSomeDataUsecase = getSomeDataUsecase,
      super(Initial{{name.pascalCase()}}State()){
    on<InitEvent>(_onInit);
  }

  final GetSomeDataUsecase _getSomeDataUsecase;

  Future<void> _onInit(InitEvent event, Emitter emit) async{
    emit(Loading{{name.pascalCase()}}State); 
    
    final result = await _getSomeDataUsecase.invoke(GetSomeDataParams());

    result.fold(
      onFailure: (failure) {},   
      onSuccess: (data) => emit(Loaded{{name.pascalCase()}}State()),    
    );
  }
}
