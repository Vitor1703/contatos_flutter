import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Widget getContainer({
  double? height,
  double? width,
  bool? canExpand,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? margin,
  Color? backgroundColor,
  Alignment? alignment,
  BorderRadiusGeometry? radius,
  DecorationImage? image,
  BoxShape? shape,
  Widget? child,
}) {
  return Builder(
    builder: (context) => Container(
      height: height,
      width: canExpand ?? true ? SizeConfig.maxWidthScreen(context) : width,
      padding: padding ?? const EdgeInsets.all(SizeConfig.spacingDefault),
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorConfig.grey,
        borderRadius: shape!= null ? null : (radius ?? BorderRadius.circular(SizeConfig.radiusDefault)),
        image: image,
        shape: shape ?? BoxShape.rectangle,
      ),
      child: child,
    ),
  );
}

Widget getContainerOnTap({
  void Function()? onTap,
  double? height,
  double? width,
  bool? canExpand,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? margin,
  Color? backgroundColor,
  Color? hoverColor,
  Alignment? alignment,
  BorderRadiusGeometry? radius,
  Widget? child,
}) {
  bool isHoveredValue = false;

  return StatefulBuilder(
    builder: (context, setState) {
      void onHover(bool isHovered) {
        setState(() {
          isHoveredValue = isHovered;
        });
      }

      return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => onHover(true),
        onExit: (event) => onHover(false),
        child: GestureDetector(
          onTap: onTap,
          child: getContainer(
            height: height,
            width: width,
            canExpand: canExpand,
            padding: padding,
            margin: margin,
            backgroundColor: isHoveredValue ? (hoverColor ?? ColorConfig.hoverOpacity) : backgroundColor,
            alignment: alignment,
            radius: radius,
            child: child,
          ),
        ),
      );
    },
  );
}
