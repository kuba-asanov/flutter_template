import 'dart:async';
import 'package:flutter_template/features/sample_feature/domain/models/sample_item.dart';

abstract interface class SampleFeatureRepository {  
    Future<List<SampleItem>> getSampleItems();
}
