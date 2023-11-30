import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Widget getButton({
  EdgeInsets? padding,
  EdgeInsets? margin,
  Color? background,
  Color? foreground,
  double? width,
  double? height,
  double? radius,
  void Function()? onPressed,
  Widget? child,
}) {
  return Builder(
    builder: (context) => Padding(
      padding: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: padding ?? const EdgeInsets.all(SizeConfig.spacingDefault),
          backgroundColor: background ?? ColorConfig.secondary,
          foregroundColor: foreground ?? ColorConfig.white,
          minimumSize: Size(width ?? SizeConfig.maxWidthScreen(context), height ?? 60),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius ?? SizeConfig.radiusSmall)),
        ),
        onPressed: onPressed,
        child: child,
      ),
    ),
  );
}

Widget getButtonText({EdgeInsets? margin, required String text, void Function()? onPressed, double? width, double? height, double? fontSize, Color? color}) {
  return getButton(
    width: width,
    height: height,
    onPressed: onPressed,
    margin: margin,
    child: getText(
      text: text,
      bold: true,
      fontSize: fontSize ?? SizeConfig.fontBig,
      color: color ?? ColorConfig.white,
    ),
  );
}
