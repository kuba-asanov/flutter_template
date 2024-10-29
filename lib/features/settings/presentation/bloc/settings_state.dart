part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  const SettingsState({this.themeMode});

  final ThemeMode? themeMode;

  @override
  List<Object?> get props => [themeMode];
}
