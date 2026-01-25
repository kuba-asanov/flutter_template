import 'package:json_annotation/json_annotation.dart';

part 'sample_item_response.g.dart';

@JsonSerializable(createToJson: false)
class SampleItemResponse {
  const SampleItemResponse({
    required this.id,
  });
  
  factory SampleItemResponse.fromJson(Map<String, dynamic> json) =>
      _$SampleItemResponseFromJson(json);

  final int id;
}
