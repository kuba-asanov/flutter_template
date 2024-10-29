import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/features/settings/domain/usecases/update_theme_usecase.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required UpdateThemeUsecase updateThemeUsecase,
    ThemeMode? themeMode,
  })  : _updateThemeUsecase = updateThemeUsecase,
        super(SettingsState(themeMode: themeMode)) {
    on<UpdateThemeEvent>(_onUpdateTheme);
  }

  final UpdateThemeUsecase _updateThemeUsecase;

  Future<void> _onUpdateTheme(UpdateThemeEvent event, Emitter emit) async {
    final newThemeMode = event.newThemeMode;
    if (newThemeMode == null || newThemeMode == state.themeMode) return;

    await _updateThemeUsecase.invoke(newThemeMode);

    emit(SettingsState(themeMode: newThemeMode));
  }
}
