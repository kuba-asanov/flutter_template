import 'package:flutter_template/features/sample_feature/details/sample_item_details_view.dart';
import 'package:go_router/go_router.dart';

class SampleItemDetailsViewRoute extends GoRoute {
  SampleItemDetailsViewRoute()
      : super(
          path: "/sample_item",
          builder: (context, state) {
            return const SampleItemDetailsView();
          },
        );
}
