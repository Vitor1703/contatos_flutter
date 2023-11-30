import 'package:contatos_flutter/components/button.dart';
import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

class ContatosFormPage extends StatefulWidget {
  final bool isNovoContato;

  const ContatosFormPage({required this.isNovoContato, super.key});

  @override
  State<ContatosFormPage> createState() => _ContatosFormPageState();
}

class _ContatosFormPageState extends State<ContatosFormPage> {

  Widget getButton() {
    return getButtonText(
      text: 'Salvar',
      margin: const EdgeInsets.all(SizeConfig.spacingDefault),
      onPressed: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: widget.isNovoContato ? 'Novo contato' : 'Editar contato',
      leading: const BackButton(color: ColorConfig.white),
      body: Container(),
      bottom: getButton(),
    );
  }
}
