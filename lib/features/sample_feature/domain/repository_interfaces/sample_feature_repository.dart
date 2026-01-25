import 'dart:async';
import '../models/sample_item.dart';

abstract interface class SampleFeatureRepository {  
    Future<List<SampleItem>> getSampleItems();
}
