import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socially_ui_components/components/assets/assets.gen.dart';

/// Socially main assets.
class SAsset {
  SAsset._();

  /// Back asset.
  static SvgPicture back = Assets.svgs.back.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture home = Assets.svgs.home.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture explore = Assets.svgs.explore.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture profile = Assets.svgs.profile.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture logo = Assets.svgs.logo.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture tag = Assets.svgs.tag.svg(
    package: 'socially_ui_components',
  );

  static SvgPicture comment = Assets.svgs.comment.svg(
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
