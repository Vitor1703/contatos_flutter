import 'dart:math';

import 'package:contatos_flutter/components/container.dart';
import 'package:contatos_flutter/components/opcao/opcao.dart';
import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/components/scroll.dart';
import 'package:contatos_flutter/components/slidable.dart';
import 'package:contatos_flutter/components/spacing.dart';
import 'package:contatos_flutter/components/text.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:contatos_flutter/functions/enum.dart';
import 'package:contatos_flutter/functions/navigator.dart';
import 'package:contatos_flutter/pages/contatos/contatos_form_page.dart';
import 'package:flutter/material.dart';

class ContatosPage extends StatefulWidget {
  const ContatosPage({super.key});

  @override
  State<ContatosPage> createState() => _ContatosPageState();
}

class _ContatosPageState extends State<ContatosPage> {
  final List<Color> colors = [Colors.red, Colors.green, Colors.yellow, Colors.purple, Colors.black, Colors.orange, Colors.pink, Colors.cyan, Colors.grey, Colors.blue];

  Widget getContato({Color? backgroundColor, required String nome, required String? celular}) {
    return Opcao(
      background: Colors.grey.shade200,
      onTap: () => open(context, const ContatosFormPage(contato: EnumContatoPage.visualizar)),
      leading: getContainer(
        shape: BoxShape.circle,
        backgroundColor: backgroundColor,
        alignment: Alignment.center,
        canExpand: false,
        child: getText(
          text: nome.substring(0, 1),
          bold: true,
          fontSize: SizeConfig.fontBig,
        ),
      ),
      title: nome,
      subtitle: celular,
      endAction: [
        spacingHorizontal(),
        getSlidableActionExcluir(context, onPressedExcluir: () => {}),
        spacingHorizontal(),
        getSlidableActionEditar(onPressed: (context) => open(context, const ContatosFormPage(contato: EnumContatoPage.editar))),
      ],
    ).getOpcaoSlidable();
  }

  Widget body() {
    final List<Widget> itens = [];

    final Random random = Random();

    for (int i = 0; i <= 10; i++) {
      final Color randomColor = colors[random.nextInt(colors.length)];

      itens.add(
        getContato(
          backgroundColor: randomColor,
          nome: 'Pessoa $i',
          celular: '(34) 9 9765-9863',
        ),
      );
    }

    return getScrollVertical(children: itens);
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: 'Contatos',
      body: body(),
      floatingButton: FloatingActionButton(
        onPressed: () => open(context, const ContatosFormPage(contato: EnumContatoPage.novo)),
        backgroundColor: ColorConfig.secondary,
        child: const Icon(Icons.person_add_rounded, color: ColorConfig.white),
      ),
    );
  }
}
