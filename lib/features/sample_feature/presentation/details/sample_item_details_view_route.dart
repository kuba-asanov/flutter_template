import 'package:flutter_template/core/navigation/app_router.dart';
import 'package:flutter_template/features/sample_feature/presentation/details/sample_item_details_view.dart';
import 'package:go_router/go_router.dart';

class SampleItemDetailsViewRoute extends GoRoute {
  SampleItemDetailsViewRoute()
      : super(
          path: AppRoutes.sampleItemDetails.path,
          name: AppRoutes.sampleItemDetails.name,
          builder: (context, state) {
            return const SampleItemDetailsView();
          },
        );
}
