import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/functions/navigator.dart';
import 'package:contatos_flutter/pages/contatos/contatos_form_page.dart';
import 'package:flutter/material.dart';

class ContatosPage extends StatefulWidget {
  const ContatosPage({super.key});

  @override
  State<ContatosPage> createState() => _ContatosPageState();
}

class _ContatosPageState extends State<ContatosPage> {
  Widget body() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: 'Contatos',
      body: body(),
      floatingButton: FloatingActionButton(
        onPressed: () => open(context, const ContatosFormPage(isNovoContato: true)),
        backgroundColor: ColorConfig.secondary,
        child: const Icon(Icons.person_add_rounded, color: ColorConfig.white),
      ),
    );
  }
}
