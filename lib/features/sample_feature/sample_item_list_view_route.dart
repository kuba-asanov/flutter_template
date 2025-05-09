import 'package:flutter/material.dart';
import 'package:flutter_template/features/sample_feature/details/sample_item_details_view_route.dart';
import 'package:flutter_template/features/sample_feature/sample_item_list_view.dart';
import 'package:flutter_template/features/settings/presentation/view/settings_view_route.dart';
import 'package:go_router/go_router.dart';

class SampleItemListViewRoute extends GoRoute {
  SampleItemListViewRoute()
      : super(
          path: "/",
          routes: [
            SampleItemDetailsViewRoute(),
            SettingsViewRoute(),
          ],
          builder: (context, state) {
            return SampleItemListView(
              router: SampleItemListViewRouter(),
            );
          },
        );
}

class SampleItemListViewRouter {
  void openDetials(BuildContext context) {
    context.push(SampleItemDetailsViewRoute().path);
  }

  void openSettings(BuildContext context) {
    context.push(SettingsViewRoute().path);
  }
}
