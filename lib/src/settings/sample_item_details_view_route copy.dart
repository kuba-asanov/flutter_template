import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/src/settings/settings_controller.dart';
import 'package:surapp_flutter/src/settings/settings_view.dart';

class SettingsViewRoute extends GoRoute {
  SettingsViewRoute()
      : super(
          path: "/settings",
          builder: (context, state) {
            return SettingsView(
              controller: state.extra as SettingsController,
            );
          },
        );
}
