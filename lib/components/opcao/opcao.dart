import 'package:contatos_flutter/components/container.dart';
import 'package:contatos_flutter/components/slidable.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'opcao_components.dart';

class Opcao extends StatelessWidget {
  final void Function()? onTap;
  final List<Widget>? endAction;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final Color? hoverColor;
  final Color? background;
  final Gradient? gradient;
  final BorderRadiusGeometry? radius;
  final bool? showBorder;
  final Color? borderColor;
  final double? borderWidth;
  final List<BoxShadow>? boxShadowList;
  final DecorationImage? image;
  final Widget? child;
  final Widget? leading;
  final bool? showIconLeading;
  final Color? backgroundIconLeading;
  final bool? backgroundIconLeadingWithOpacity;
  final IconData? iconLeading;
  final Color? iconColorLeading;
  final double? iconSizeLeading;
  final String? title;
  final Widget? titleWidget;
  final double? titleFontSize;
  final Color? titleColor;
  final bool? titleBold;
  final bool? titleOverflow;
  final TextDecoration? titleDecoration;
  final double? titleSpacing;
  final Widget? subtitleWidget;
  final String? subtitle;
  final double? subtitleFontSize;
  final Color? subtitleColor;
  final bool? subtitleBold;
  final bool? subtitleOverflow;
  final TextDecoration? subtitleDecoration;
  final Widget? trailingWidget;
  final IconData? iconTrailing;
  final double? iconSizeTrailing;
  final Color? iconColorTrailing;
  final bool? showErrorMessage;
  final String? errorMessage;
  final bool? showExplicacao;

  const Opcao({
    super.key,
    this.onTap,
    this.endAction,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.hoverColor,
    this.background,
    this.gradient,
    this.radius,
    this.showBorder,
    this.borderColor,
    this.borderWidth,
    this.boxShadowList,
    this.image,
    this.child,
    this.leading,
    this.showIconLeading,
    this.backgroundIconLeading,
    this.backgroundIconLeadingWithOpacity,
    this.iconLeading,
    this.iconColorLeading,
    this.iconSizeLeading,
    this.title,
    this.titleWidget,
    this.titleFontSize,
    this.titleColor,
    this.titleBold,
    this.titleOverflow,
    this.titleDecoration,
    this.titleSpacing,
    this.subtitleWidget,
    this.subtitle,
    this.subtitleFontSize,
    this.subtitleColor,
    this.subtitleBold,
    this.subtitleOverflow,
    this.subtitleDecoration,
    this.trailingWidget,
    this.iconTrailing,
    this.iconSizeTrailing,
    this.iconColorTrailing,
    this.showErrorMessage,
    this.errorMessage,
    this.showExplicacao,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        getContainerOnTap(
          onTap: onTap,
          padding: padding ?? const EdgeInsets.all(SizeConfig.spacingDefault),
          margin: margin ?? EdgeInsets.only(bottom: showErrorMessage ?? false ? SizeConfig.spacingSmall : SizeConfig.spacingBig),
          width: width,
          height: height,
          hoverColor: hoverColor,
          backgroundColor: background,
          radius: radius,
          child: child ??
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  getLeadingOpcao(
                    leading: leading,
                    showIconLeading: showIconLeading,
                    backgroundIconLeading: backgroundIconLeading,
                    backgroundIconLeadingWithOpacity: backgroundIconLeadingWithOpacity,
                    iconLeading: iconLeading,
                    iconColorLeading: iconColorLeading,
                    iconSizeLeading: iconSizeLeading,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getTitleOpcao(
                          titleWidget: titleWidget,
                          title: title,
                          titleFontSize: titleFontSize,
                          titleColor: titleColor,
                          titleBold: titleBold,
                        ),
                        getSubtitleOpcao(
                          subtitleWidget: subtitleWidget,
                          subtitle: subtitle,
                          subtitleFontSize: subtitleFontSize,
                          subtitleColor: subtitleColor,
                          subtitleBold: subtitleBold,
                        ),
                      ],
                    ),
                  ),
                  getTrailingOpcao(
                    trailingWidget: trailingWidget,
                    iconTrailing: iconTrailing,
                    iconSizeTrailing: iconSizeTrailing,
                    iconColorTrailing: iconColorTrailing,
                  ),
                ],
              ),
        ),
      ],
    );
  }

  Widget getOpcaoSemIcone() {
    return Opcao(
      onTap: onTap,
      padding: padding,
      margin: margin,
      width: width,
      height: height,
      hoverColor: hoverColor,
      background: background,
      gradient: gradient,
      radius: radius,
      showBorder: showBorder,
      borderColor: borderColor,
      borderWidth: borderWidth,
      boxShadowList: boxShadowList,
      showIconLeading: false,
      leading: leading,
      title: title,
      titleWidget: titleWidget,
      titleFontSize: titleFontSize,
      titleColor: titleColor,
      titleBold: titleBold,
      titleOverflow: titleOverflow,
      titleSpacing: titleSpacing,
      subtitleWidget: subtitleWidget,
      subtitle: subtitle,
      subtitleFontSize: subtitleFontSize,
      subtitleColor: subtitleColor,
      subtitleBold: subtitleBold,
      subtitleOverflow: subtitleOverflow,
      trailingWidget: trailingWidget,
      iconTrailing: iconTrailing,
      iconSizeTrailing: iconSizeTrailing,
      iconColorTrailing: iconColorTrailing,
      showErrorMessage: showErrorMessage,
      errorMessage: errorMessage,
    );
  }

  Widget getOpcaoSlidable({EdgeInsetsGeometry? margin}) {
    return Padding(
      padding: margin ?? const EdgeInsets.only(bottom: SizeConfig.spacingDefault),
      child: getSlidable(
        endAction: endAction,
        child: Opcao(
          titleWidget: titleWidget,
          onTap: onTap,
          padding: padding,
          margin: EdgeInsets.zero,
          width: width,
          height: height,
          hoverColor: hoverColor,
          background: background,
          gradient: gradient,
          radius: radius,
          showBorder: showBorder,
          borderColor: borderColor,
          borderWidth: borderWidth,
          boxShadowList: boxShadowList,
          leading: leading,
          showIconLeading: showIconLeading,
          backgroundIconLeading: backgroundIconLeading,
          iconLeading: iconLeading,
          iconColorLeading: iconColorLeading,
          title: title,
          titleFontSize: titleFontSize,
          titleColor: titleColor,
          titleBold: titleBold,
          titleOverflow: titleOverflow,
          subtitleWidget: subtitleWidget,
          subtitle: subtitle,
          subtitleFontSize: subtitleFontSize,
          subtitleColor: subtitleColor,
          subtitleBold: subtitleBold,
          subtitleOverflow: subtitleOverflow,
          trailingWidget: trailingWidget,
          iconTrailing: iconTrailing,
          iconSizeTrailing: iconSizeTrailing,
          iconColorTrailing: iconColorTrailing,
          showErrorMessage: showErrorMessage,
          errorMessage: errorMessage,
        ),
      ),
    );
  }
}