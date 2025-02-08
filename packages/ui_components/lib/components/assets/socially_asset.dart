import 'package:flutter_svg/flutter_svg.dart';
import 'package:socially_ui_components/components/assets/assets.gen.dart';

/// Socially main assets.
class SAsset {
  SAsset._();

  /// Back asset.
  static SvgPicture back = Assets.svgs.back.svg(
    package: 'socially_ui_components',
  );

  /// Download asset.
  static SvgPicture download = Assets.svgs.download.svg(
    package: 'socially_ui_components',
  );

  /// Favorite asset.
  static SvgPicture favorite = Assets.svgs.favorite.svg(
    package: 'socially_ui_components',
  );

  /// Notifications asset.
  static SvgPicture notifications = Assets.svgs.notifications.svg(
    package: 'socially_ui_components',
  );

  /// Save asset.
  static SvgPicture save = Assets.svgs.save.svg(
    package: 'socially_ui_components',
  );
}
