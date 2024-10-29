import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/settings/presentation/view/settings_view.dart';

class SettingsViewRoute extends GoRoute {
  SettingsViewRoute()
      : super(
          path: "/settings",
          builder: (context, state) {
            return const SettingsView();
          },
        );
}
