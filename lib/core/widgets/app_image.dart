import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String assetPath;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const AppImage({
    super.key,
    required this.assetPath,
    this.onTap,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.borderRadius = 12,
    this.padding,
    this.color,
  });

  bool get _isSvg => assetPath.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final imageWidget =
        _isSvg
            ? SvgPicture.asset(
              assetPath,
              width: width,
              height: height,
              fit: fit,
              colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
            )
            : Image.asset(assetPath, width: width, height: height, fit: fit, color: color);

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        splashColor: Theme.of(context).splashColor,
        child: Padding(padding: padding ?? EdgeInsets.zero, child: imageWidget),
      ),
    );
  }
}
