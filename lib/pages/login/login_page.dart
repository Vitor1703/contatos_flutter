import 'package:contatos_flutter/components/button.dart';
import 'package:contatos_flutter/components/form_field/email_form_field.dart';
import 'package:contatos_flutter/components/form_field/senha_form_field.dart';
import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/components/scroll.dart';
import 'package:contatos_flutter/components/spacing.dart';
import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/functions/navigator.dart';
import 'package:contatos_flutter/pages/cadastrar_usuario/cadastrar_usuario_page.dart';
import 'package:contatos_flutter/pages/contatos/contatos_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();

  Widget getRowCadastrar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getText(text: 'Não tem conta ainda?'),
        spacingHorizontal(),
        getTextButton(
          text: 'Cadastrar',
          bold: true,
          color: ColorConfig.secondary,
          onTap: () => openWithoutBack(context, const CadastrarUsuarioPage()),
        ),
      ],
    );
  }

  Widget body() {
    return getScrollVertical(
      children: [
        getEmailFormField(controller: email),
        getSenhaFormField(controller: senha),
        getButtonText(text: 'Login', onPressed: () => openWithoutBack(context, const ContatosPage())),
        spacingVertical(),
        getRowCadastrar(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: 'Login',
      body: body(),
    );
  }
}
