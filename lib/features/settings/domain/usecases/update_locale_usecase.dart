import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_template/features/settings/data/settings_service.dart';

class UpdateLocaleUsecase {
  UpdateLocaleUsecase(SettingsService settingsService)
      : _settingsService = settingsService;

  final SettingsService _settingsService;

  FutureOr<void> invoke(Locale locale) {
    return _settingsService.updateLocale(locale);
  }
}
