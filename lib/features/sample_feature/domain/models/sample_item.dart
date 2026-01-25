import 'package:equatable/equatable.dart';

class SampleItem with EquatableMixin {
  const SampleItem({
    required this.id,
  });

  final int id;

  @override
  List<Object?> get props => [id];
}
