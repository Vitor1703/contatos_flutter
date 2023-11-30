import 'dart:ui';

import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Widget getScrollVertical({EdgeInsetsGeometry? padding, MainAxisAlignment? mainAxisAlignment, CrossAxisAlignment? crossAxisAlignment, List<Widget>? children}) {
  return SingleChildScrollView(
    padding: padding ?? const EdgeInsets.all(SizeConfig.spacingDefault),
    scrollDirection: Axis.vertical,
    child: Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: children ?? [],
    ),
  );
}

class GenericScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
        PointerDeviceKind.trackpad,
      };

  static ScrollBehavior get configuration => GenericScrollBehavior().copyWith(overscroll: false);
}
