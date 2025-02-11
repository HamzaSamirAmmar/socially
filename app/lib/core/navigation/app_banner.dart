import 'package:flutter/material.dart';
import 'package:socially/app_configuration.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    super.key,
    required this.configuration,
    required this.child,
  });

  final AppConfiguration configuration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (configuration.environment.enabled)
          SizedBox(
            width: 50,
            height: 50,
            child: CustomPaint(
              painter: BannerPainter(
                message: configuration.environment.shortName,
                textDirection: Directionality.of(context),
                layoutDirection: Directionality.of(context),
                location: BannerLocation.topStart,
                color: configuration.environment.color,
              ),
            ),
          ),
      ],
    );
  }
}

extension _AppEnvironmentBanner on AppEnvironment {
  bool get enabled {
    return AppEnvironment.production != this;
  }

  Color get color {
    switch (this) {
      case AppEnvironment.development:
        return Colors.pink;
      case AppEnvironment.staging:
        return Colors.blue;
      case AppEnvironment.production:
        return Colors.transparent;
    }
  }

  String get shortName {
    switch (this) {
      case AppEnvironment.development:
        return 'dev';
      case AppEnvironment.staging:
        return 'stage';
      case AppEnvironment.production:
        return '';
    }
  }
}
