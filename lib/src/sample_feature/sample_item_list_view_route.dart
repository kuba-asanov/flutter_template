import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/src/sample_feature/sample_item_details_view_route.dart';
import 'package:surapp_flutter/src/sample_feature/sample_item_list_view.dart';
import 'package:surapp_flutter/src/settings/sample_item_details_view_route%20copy.dart';
import 'package:surapp_flutter/src/settings/settings_controller.dart';

class SampleItemListViewRoute extends GoRoute {
  SampleItemListViewRoute(SettingsController settingsController)
      : super(
          path: "/",
          routes: [
            SampleItemDetailsViewRoute(),
            SettingsViewRoute(),
          ],
          builder: (context, state) {
            return SampleItemListView(
              router: SampleItemListViewRouter(),
              settingsController: settingsController,
            );
          },
        );
}

class SampleItemListViewRouter {
  void openDetials(BuildContext context) {
    context.push(SampleItemDetailsViewRoute().path);
  }

  void openSettings(
    BuildContext context,
    SettingsController controller,
  ) {
    context.push(
      SettingsViewRoute().path,
      extra: controller,
    );
  }
}
