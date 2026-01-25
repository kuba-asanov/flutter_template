import '../../domain/models/sample_item.dart';
import '../models/sample_item_response/sample_item_response.dart';

extension SampleItemMapper on SampleItemResponse {
  SampleItem toEntity() => SampleItem(id: id);
}
