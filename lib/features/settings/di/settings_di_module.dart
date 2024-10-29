import 'package:surapp_flutter/features/settings/domain/usecases/update_theme_usecase.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:surapp_flutter/features/settings/data/settings_service.dart';
import 'package:take_it/take_it.dart';

class SettingsDiModule extends DiModuleAsync {
  @override
  Future<void> setup(AsyncRegistrar it) async {
    it
      // Data
      //
      ..registerSingleton<SettingsService>(SettingsService())

      // Domain
      //
      ..registerFactory<UpdateThemeUsecase>(
          () => UpdateThemeUsecase(get<SettingsService>()));

    // Presentation
    //
    final themeMode = await get<SettingsService>().themeMode();

    it.registerFactory<SettingsBloc>(
      () {
        return SettingsBloc(
          themeMode: themeMode,
          updateThemeUsecase: get<UpdateThemeUsecase>(),
        );
      },
    );
  }
}
