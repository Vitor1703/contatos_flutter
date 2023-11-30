import 'package:contatos_flutter/components/form_field/form_field.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:flutter/material.dart';

Widget getSenhaFormField({required TextEditingController controller, double? width}) {
  return getFormField(
    controller,
    width: width,
    prefixIcon: const Icon(Icons.key, color: ColorConfig.grey),
    labelText: 'Senha',
    hintText: 'Digite a senha',
    obscureText: true,
  );
}
