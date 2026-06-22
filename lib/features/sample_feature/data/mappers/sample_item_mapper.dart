import 'package:flutter_template/features/sample_feature/data/models/sample_item_response/sample_item_response.dart';
import 'package:flutter_template/features/sample_feature/domain/models/sample_item.dart';

extension SampleItemMapper on SampleItemResponse {
  SampleItem toEntity() => SampleItem(id: id);
}
