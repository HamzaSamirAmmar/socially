import 'package:flutter/cupertino.dart';
import 'package:socially/core/infrastructure/l10n/l10n_service.dart';

class L10nJSONLocalization extends LocalizationsDelegate<dynamic> {
  const L10nJSONLocalization._();

  static const delegate = L10nJSONLocalization._();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future load(Locale locale) => L10nService.instance.load(locale);

  @override
  bool shouldReload(L10nJSONLocalization old) => false;
}
