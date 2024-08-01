// ignore_for_file: constant_identifier_names

class Config {
  static const String APP_NAME = 'DatingApp';
  static const AppMood APP_MOOD = AppMood.production;
}

enum AppMood {
  testing,
  development,
  production
}