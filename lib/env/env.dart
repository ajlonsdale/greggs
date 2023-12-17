import 'dart:convert';

import 'package:flutter/services.dart';

enum Environment { dev, stage, prod }

/// Base controller for multiple environments
class ENV {
  ENV._();

  /// Singleton instance of [ENV]
  static final instance = ENV._();

  /// Current environment the build is running in.
  late final Environment env;

  late final Map<String, dynamic> _configMap;

  bool _hasBeenInitialized = false;
  bool get hasBeenInitialized => _hasBeenInitialized;

  /// Base url for the running environment.
  String get baseUrl => _getConfig('baseUrl') as String;

  /// Helper to show whether current environment is development
  bool get isDev => env == Environment.dev;

  /// Helper to show whether current environment is production
  bool get isProd => env == Environment.prod;

  /// Helper to show whether current environment is staging
  bool get isStage => env == Environment.stage;

  /// Read the config file from the given [path].
  ///
  /// Must call this at the beginning of the app.
  Future<void> initialize(
    String path,
    Environment env,
  ) async {
    assert(
      _hasBeenInitialized == false,
      'Only initialize config once at the beginning of the app',
    );
    // only allow initialization once;
    if (_hasBeenInitialized) return;
    _hasBeenInitialized = true;

    this.env = env;

    final configString = await rootBundle.loadString(path);
    _configMap = jsonDecode(configString) as Map<String, dynamic>;
  }

  // This internal method is simply to advise if config has not been initialized
  dynamic _getConfig(String key) {
    assert(_hasBeenInitialized, "Config hasn't been initialized.");
    return _configMap[key];
  }
}
