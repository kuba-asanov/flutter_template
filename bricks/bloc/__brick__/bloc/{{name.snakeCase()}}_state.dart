part of '{{name.snakeCase()}}_bloc.dart';

sealed class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();
  
  @override
  List<Object?> get props => [];
}

class Initial{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}

class Loading{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}

class Loaded{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}
