import 'package:socially/core/infrastructure/l10n/l10n_service.dart';

extension L10n on String {
  String get l10n => L10nService.instance.translate(this);

  String l10nPlaceholder(List<dynamic> parameters) =>
      L10nService.instance.translate(this, parameters: parameters);
}
