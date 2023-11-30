import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Scaffold getScaffold({required String title, Widget? leading, required Widget body, Widget? bottom, Widget? floatingButton}) {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 80,
      title: getText(
        text: title,
        color: ColorConfig.white,
        bold: true,
        fontSize: SizeConfig.fontBig,
      ),
      leading: leading,
      backgroundColor: ColorConfig.primary,
      centerTitle: true,
    ),
    body: body,
    bottomNavigationBar: bottom,
    floatingActionButton: floatingButton,
  );
}
