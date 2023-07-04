/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrowright_icon.png
  AssetGenImage get arrowrightIcon =>
      const AssetGenImage('assets/icons/arrowright_icon.png');

  /// File path: assets/icons/calander_icon.png
  AssetGenImage get calanderIcon =>
      const AssetGenImage('assets/icons/calander_icon.png');

  /// File path: assets/icons/dropdawn_icon.png
  AssetGenImage get dropdawnIcon =>
      const AssetGenImage('assets/icons/dropdawn_icon.png');

  /// File path: assets/icons/person_icon.png
  AssetGenImage get personIcon =>
      const AssetGenImage('assets/icons/person_icon.png');

  /// File path: assets/icons/type_icon.png
  AssetGenImage get typeIcon =>
      const AssetGenImage('assets/icons/type_icon.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [arrowrightIcon, calanderIcon, dropdawnIcon, personIcon, typeIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/home_img.png
  AssetGenImage get homeImg =>
      const AssetGenImage('assets/images/home_img.png');

  /// List of all assets
  List<AssetGenImage> get values => [homeImg];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
