import 'package:contatos_flutter/components/button.dart';
import 'package:contatos_flutter/components/form_field/email_form_field.dart';
import 'package:contatos_flutter/components/form_field/senha_form_field.dart';
import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/components/scroll.dart';
import 'package:contatos_flutter/components/spacing.dart';
import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/functions/navigator.dart';
import 'package:contatos_flutter/pages/contatos/contatos_page.dart';
import 'package:contatos_flutter/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class CadastrarUsuarioPage extends StatefulWidget {
  const CadastrarUsuarioPage({super.key});

  @override
  State<CadastrarUsuarioPage> createState() => _CadastrarUsuarioPageState();
}

class _CadastrarUsuarioPageState extends State<CadastrarUsuarioPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController senha = TextEditingController();

  Widget getRowLogar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getText(text: 'Jã tem uma conta?'),
        spacingHorizontal(),
        getTextButton(
          text: 'Login',
          bold: true,
          color: ColorConfig.secondary,
          onTap: () => openWithoutBack(context, const LoginPage()),
        ),
      ],
    );
  }

  Widget body() {
    return getScrollVertical(
      children: [
        getEmailFormField(controller: email),
        getSenhaFormField(controller: senha),
        getButtonText(text: 'Salvar', onPressed: () => openWithoutBack(context, const ContatosPage())),
        spacingVertical(),
        getRowLogar(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: 'Cadastrar',
      body: body(),
    );
  }
}
