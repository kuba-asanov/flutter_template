import 'package:shared_preferences/shared_preferences.dart';
import 'package:surapp_flutter/core/storage/local_storage.dart';
import 'package:surapp_flutter/core/storage/local_storage_impl.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_locale_usecase.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_theme_usecase.dart';
import 'package:surapp_flutter/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:surapp_flutter/features/settings/data/settings_service.dart';
import 'package:take_it/take_it.dart';

class CoreDiModule extends DiModuleAsync {
  @override
  Future<void> setup(AsyncRegistrar it) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    it
      ..registerSingleton<LocalStorage>(
        LocalStorageImpl(sharedPreferences),
      )
      // Data
      //
      ..registerSingleton<SettingsService>(
          SettingsService(localStorage: get<LocalStorage>()))

      // Domain
      //
      ..registerFactory<UpdateThemeUsecase>(
          () => UpdateThemeUsecase(get<SettingsService>()))
      ..registerFactory<UpdateLocaleUsecase>(
          () => UpdateLocaleUsecase(get<SettingsService>()));

    // Presentation
    //
    final themeMode = await get<SettingsService>().themeMode();
    final locale = await get<SettingsService>().locale();

    it.registerLazySingleton<SettingsBloc>(
      () {
        return SettingsBloc(
          themeMode: themeMode,
          locale: locale,
          updateThemeUsecase: get<UpdateThemeUsecase>(),
          updateLocaleUsecase: get<UpdateLocaleUsecase>(),
        );
      },
      dispose: (instance) => instance.close(),
    );
  }
}
