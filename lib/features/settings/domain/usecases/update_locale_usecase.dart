import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_template/common/utils/base_usecase.dart';
import 'package:flutter_template/features/settings/data/settings_service.dart';

class UpdateLocaleUsecase extends BaseUseCase<void, Locale> {
  UpdateLocaleUsecase(SettingsService settingsService) : _settingsService = settingsService;

  final SettingsService _settingsService;

  @override
  FutureOr<void> makeRequest(Locale params) {
    return _settingsService.updateLocale(params);
  }
}
