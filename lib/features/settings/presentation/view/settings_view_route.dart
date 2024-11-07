import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/settings/di/settings_di_module.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:surapp_flutter/features/settings/presentation/view/settings_view.dart';
import 'package:take_it/take_it.dart';

class SettingsViewRoute extends GoRoute {
  SettingsViewRoute()
      : super(
          path: "/settings",
          builder: (context, state) {
            return DiScopeBuilder(
              createModule: SettingsDiModule.new,
              builder: (context, module) {
                return SettingsView(
                  bloc: module.get<SettingsBloc>(),
                );
              },
            );
          },
        );
}
