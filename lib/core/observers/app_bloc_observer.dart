import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/common/utils/logger.dart';

/// Блок обсервер для слежения всего что находится в блоке
class AppBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    final logMessage = StringBuffer()
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln('Event: ${transition.event.runtimeType}')
      ..writeln('Transition: ${transition.currentState.runtimeType} => '
          '${transition.nextState.runtimeType}')
      ..write(
        'New State: ${transition.nextState?.toString().limit(200)}',
      );
    logger.d(logMessage.toString());
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final logMessage = StringBuffer()
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln(error.toString());

    logger.d(logMessage.toString());
    super.onError(bloc, error, stackTrace);
  }

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   final logMessage = StringBuffer()
  //     ..writeln('Bloc: ${bloc.runtimeType}')
  //     ..writeln('Event: ${event.runtimeType}')
  //     ..write('Details: ${event?.toString().limit(200)}');

  //   logger.d(logMessage.toString());
  //   super.onEvent(bloc, event);
  // }

  // @override
  // void onCommand(Bloc bloc, UiCommand command) {
  //   final logMessage = StringBuffer()
  //     ..writeln('Bloc: ${bloc.runtimeType}')
  //     ..writeln('Command: ${command.runtimeType}')
  //     ..write('Details: ${command.toString().limit(200)}');
  //   logger.d(logMessage.toString());
  // }
}

extension on String {
  String limit(int length) {
    return this.length > length ? substring(0, length) : this;
  }
}
