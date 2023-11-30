import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Text getText({required String text, double? fontSize, bool? bold, Color? color, TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize ?? SizeConfig.fontDefault,
      fontWeight: bold ?? false ? FontWeight.bold : FontWeight.normal,
      color: color,
    ),
    textAlign: textAlign,
  );
}

Widget getTextButton({void Function()? onTap, required String text, double? fontSize, Color? color, bool? bold, TextAlign? textAlign}) {
  return GestureDetector(
    onTap: onTap,
    child: getText(
      text: text,
      fontSize: fontSize,
      color: color,
      bold: bold,
      textAlign: textAlign,
    ),
  );
}
