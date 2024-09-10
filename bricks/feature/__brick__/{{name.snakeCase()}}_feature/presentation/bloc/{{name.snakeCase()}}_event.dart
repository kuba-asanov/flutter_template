part of '{{name.snakeCase()}}_bloc.dart';

sealed class {{name.pascalCase()}}Event extends BaseEvent{
  const {{name.pascalCase()}}Event();
}

class InitEvent extends {{name.pascalCase()}}Event{
  const InitEvent();
}
