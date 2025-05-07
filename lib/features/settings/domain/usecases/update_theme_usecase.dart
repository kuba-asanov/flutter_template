import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_template/common/utils/base_usecase.dart';
import 'package:flutter_template/features/settings/data/settings_service.dart';

class UpdateThemeUsecase extends BaseUseCase<void, ThemeMode> {
  UpdateThemeUsecase(SettingsService settingsService) : _settingsService = settingsService;

  final SettingsService _settingsService;

  @override
  FutureOr<void> makeRequest(ThemeMode params) {
    return _settingsService.updateThemeMode(params);
  }
}
