import 'package:contatos_flutter/components/form_field/form_field.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:flutter/material.dart';

Widget getEmailFormField({required TextEditingController controller, double? width}) {
  return getFormField(
    controller,
    width: width,
    prefixIcon: const Icon(Icons.person, color: ColorConfig.grey),
    labelText: 'E-mail',
    hintText: 'Digite o e-mail',
  );
}
