import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

// Monta a parte do icon ou qualquer outro widget o componente do opção
Widget getLeadingOpcao({
  EdgeInsetsGeometry? margin,
  Widget? leading,
  bool? showIconLeading,
  Color? backgroundIconLeading,
  bool? backgroundIconLeadingWithOpacity,
  IconData? iconLeading,
  Color? iconColorLeading,
  double? iconSizeLeading,
}) {
  if (leading == null) {
    if (showIconLeading ?? true) {
      return Container(
        padding: const EdgeInsets.all(SizeConfig.spacingDefault),
        margin: margin ?? const EdgeInsets.only(right: SizeConfig.spacingDefault),
        decoration: BoxDecoration(
          color: (backgroundIconLeadingWithOpacity ?? true ? backgroundIconLeading?.withOpacity(0.3) : backgroundIconLeading) ?? (backgroundIconLeadingWithOpacity ?? true ? ColorConfig.secondary : ColorConfig.primary),
          borderRadius: BorderRadius.circular(SizeConfig.radiusSmall),
        ),
        child: Icon(iconLeading ?? Icons.add, color: iconColorLeading ?? ColorConfig.primary, size: iconSizeLeading ?? SizeConfig.iconDefault),
      );
    }
  }

  if (leading != null) {
    return Padding(
      padding: const EdgeInsets.only(right: SizeConfig.spacingDefault),
      child: leading,
    );
  }

  return Container();
}

// Monta um título padrão do opção ou um widget personalizado
Widget getTitleOpcao({
  EdgeInsetsGeometry? margin,
  Widget? titleWidget,
  String? title,
  double? titleFontSize,
  Color? titleColor,
  bool? titleBold,
}) {
  if (titleWidget == null) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: getText(
        text: title ?? '',
        fontSize: titleFontSize ?? SizeConfig.fontDefault,
        color: titleColor,
        bold: titleBold ?? true,
      ),
    );
  }

  return titleWidget;
}

// Monta o subtitulo do opção ou um widget personalizado
Widget getSubtitleOpcao({
  Widget? subtitleWidget,
  String? subtitle,
  double? subtitleFontSize,
  Color? subtitleColor,
  bool? subtitleBold,
}) {
  if (subtitleWidget == null) {
    if (subtitle != null) {
      return Padding(
        padding: const EdgeInsets.only(top: SizeConfig.spacingDefault),
        child: getText(
          text: subtitle,
          fontSize: subtitleFontSize ?? SizeConfig.fontSmall,
          color: subtitleColor,
          bold: subtitleBold ?? false,
        ),
      );
    }
  }

  return subtitleWidget ?? Container();
}

// Monta o icone - > no final do opção ou qualquer outro widget personalizado
Widget getTrailingOpcao({
  Widget? trailingWidget,
  IconData? iconTrailing,
  double? iconSizeTrailing,
  Color? iconColorTrailing,
}) {
  if (trailingWidget == null) {
    return Padding(
      padding: const EdgeInsets.only(left: SizeConfig.spacingDefault),
      child: Icon(
        iconTrailing ?? Icons.arrow_forward_ios,
        size: iconSizeTrailing ?? SizeConfig.iconSmall,
        color: iconColorTrailing,
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.only(left: SizeConfig.spacingDefault),
    child: trailingWidget,
  );
}
