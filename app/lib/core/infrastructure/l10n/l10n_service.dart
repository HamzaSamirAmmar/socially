import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:socially/core/infrastructure/l10n/l10n_meta.dart';
import 'package:socially/core/infrastructure/logger/socially_logger.dart';
import 'package:sprintf/sprintf.dart';

///
/// A service to handle localization of the application.
///
class L10nService {
  static L10nService? _instance;

  static L10nService get instance {
    _instance ??= L10nService();

    return _instance!;
  }

  /// Get Support locales for this application.
  List<Locale> get supportedLocales =>
      _allMeta.map((meta) => meta.locale).toList();

  /// Get Current locale for the user.
  Locale get currentLocale => _currentLocale;

  late Map<String, dynamic> _translations;

  late Locale _currentLocale;
  late L10nMeta _primaryMeta;
  List<L10nMeta> _allMeta = [];

  /// Set all locales that we support in this application.
  void configure(L10nMeta primary, {List<L10nMeta>? others}) {
    assert(_allMeta.isEmpty, "Service meta is already configured");

    _allMeta = [primary] + (others ?? []);
    _primaryMeta = primary;
  }

  /// Load translations depending on current locale.
  Future<void> load(Locale locale) async {
    assert(_allMeta.isNotEmpty, "Please configure service meta");

    try {
      _currentLocale = locale;

      final selectedLanguage = locale.languageCode;
      final currentMeta = _allMeta.firstWhere(
        (meta) => meta.locale.languageCode == selectedLanguage,
        orElse: () => _primaryMeta,
      );
      final jsonFile = currentMeta.filePath;
      sLogger.i("[L10n] Used locale: ${currentMeta.locale}");
      final rawTranslations = await rootBundle.loadString(jsonFile);

      _translations = json.decode(rawTranslations) as Map<String, dynamic>;
    } catch (exception, stack) {
      sLogger.f(exception, stack: stack);
      _translations = <String, dynamic>{};
    }
  }

  /// Gets text value out of key passed.
  String translate(String key, {List<dynamic> parameters = const <dynamic>[]}) {
    assert(_translations[key] != null, "Missing translation for key: $key");

    var translation =
        _translations[key] as String? ??
        "$key: Missing translation, please update application if possible";
    if (parameters.isNotEmpty) {
      translation = sprintf(translation, parameters);
    }

    return translation;
  }
}
