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
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        splashColor: Theme.of(context).splashColor,
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child:
              _isSvg
                  ? SvgPicture.asset(
                    assetPath,
                    width: width,
                    height: height,
                    fit: fit,
                    colorFilter: ColorFilter.mode(color ?? Colors.black, BlendMode.srcIn),
                  )
                  : Image.asset(assetPath, width: width, height: height, fit: fit, color: color),
        ),
      ),
    );
  }
}
