import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/core/navigation/app_router.dart';
import 'package:surapp_flutter/core/localization/generated/app_localization.dart';
import 'package:surapp_flutter/features/settings/di/settings_di_module.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:take_it/take_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DiScopeBuilder(
      createModule: SettingsDiModule.new,
      builder: (context, module) {
        return BlocProvider(
          create: (context) => module.get<SettingsBloc>(),
          child: BlocBuilder<SettingsBloc, SettingsState>(
            builder: (BuildContext context, SettingsState state) {
              return MaterialApp.router(
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                theme: ThemeData(),
                darkTheme: ThemeData.dark(),
                themeMode: state.themeMode,
                routerConfig: AppRouter.router(),
              );
            },
          ),
        );
      },
    );
  }
}
