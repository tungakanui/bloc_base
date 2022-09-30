/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env_dev
  String get envDev => 'assets/env/.env_dev';

  /// File path: assets/env/.env_production
  String get envProduction => 'assets/env/.env_production';

  /// File path: assets/env/.env_staging
  String get envStaging => 'assets/env/.env_staging';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/ic_add.svg
  SvgGenImage get icAdd => const SvgGenImage('assets/svg/ic_add.svg');

  /// File path: assets/svg/ic_arrow_left.svg
  SvgGenImage get icArrowLeft =>
      const SvgGenImage('assets/svg/ic_arrow_left.svg');

  /// File path: assets/svg/ic_camera.svg
  SvgGenImage get icCamera => const SvgGenImage('assets/svg/ic_camera.svg');

  /// File path: assets/svg/ic_cancel.svg
  SvgGenImage get icCancel => const SvgGenImage('assets/svg/ic_cancel.svg');

  /// File path: assets/svg/ic_car.svg
  SvgGenImage get icCar => const SvgGenImage('assets/svg/ic_car.svg');

  /// File path: assets/svg/ic_check.svg
  SvgGenImage get icCheck => const SvgGenImage('assets/svg/ic_check.svg');

  /// File path: assets/svg/ic_check_circle.svg
  SvgGenImage get icCheckCircle =>
      const SvgGenImage('assets/svg/ic_check_circle.svg');

  /// File path: assets/svg/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/svg/ic_close.svg');

  /// File path: assets/svg/ic_delete.svg
  SvgGenImage get icDelete => const SvgGenImage('assets/svg/ic_delete.svg');

  /// File path: assets/svg/ic_filter.svg
  SvgGenImage get icFilter => const SvgGenImage('assets/svg/ic_filter.svg');

  /// File path: assets/svg/ic_folder.svg
  SvgGenImage get icFolder => const SvgGenImage('assets/svg/ic_folder.svg');

  /// File path: assets/svg/ic_hamburger_menu.svg
  SvgGenImage get icHamburgerMenu =>
      const SvgGenImage('assets/svg/ic_hamburger_menu.svg');

  /// File path: assets/svg/ic_hide.svg
  SvgGenImage get icHide => const SvgGenImage('assets/svg/ic_hide.svg');

  /// File path: assets/svg/ic_lock.svg
  SvgGenImage get icLock => const SvgGenImage('assets/svg/ic_lock.svg');

  /// File path: assets/svg/ic_logout.svg
  SvgGenImage get icLogout => const SvgGenImage('assets/svg/ic_logout.svg');

  /// File path: assets/svg/ic_money.svg
  SvgGenImage get icMoney => const SvgGenImage('assets/svg/ic_money.svg');

  /// File path: assets/svg/ic_photo_library.svg
  SvgGenImage get icPhotoLibrary =>
      const SvgGenImage('assets/svg/ic_photo_library.svg');

  /// File path: assets/svg/ic_profile.svg
  SvgGenImage get icProfile => const SvgGenImage('assets/svg/ic_profile.svg');

  /// File path: assets/svg/ic_right_arrow_arrow.svg
  SvgGenImage get icRightArrowArrow =>
      const SvgGenImage('assets/svg/ic_right_arrow_arrow.svg');

  /// File path: assets/svg/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/svg/ic_search.svg');

  /// File path: assets/svg/ic_show.svg
  SvgGenImage get icShow => const SvgGenImage('assets/svg/ic_show.svg');

  /// File path: assets/svg/ic_time.svg
  SvgGenImage get icTime => const SvgGenImage('assets/svg/ic_time.svg');

  /// File path: assets/svg/ic_warning.svg
  SvgGenImage get icWarning => const SvgGenImage('assets/svg/ic_warning.svg');
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/vi-VN.json
  String get viVN => 'assets/translations/vi-VN.json';
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
