import 'package:contatos_flutter/components/button.dart';
import 'package:contatos_flutter/components/form_field/form_field.dart';
import 'package:contatos_flutter/components/scaffold.dart';
import 'package:contatos_flutter/components/scroll.dart';
import 'package:contatos_flutter/components/spacing.dart';
import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:contatos_flutter/functions/enum.dart';
import 'package:contatos_flutter/functions/navigator.dart';
import 'package:flutter/material.dart';

class ContatosFormPage extends StatefulWidget {
  final EnumContatoPage contato;

  const ContatosFormPage({required this.contato, super.key});

  @override
  State<ContatosFormPage> createState() => _ContatosFormPageState();
}

class _ContatosFormPageState extends State<ContatosFormPage> {
  final TextEditingController nome = TextEditingController();
  final TextEditingController sobrenome = TextEditingController();
  final TextEditingController empresa = TextEditingController();
  final TextEditingController telefone = TextEditingController();
  final TextEditingController celular = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController cep = TextEditingController();
  final TextEditingController rua = TextEditingController();
  final TextEditingController bairro = TextEditingController();
  final TextEditingController cidade = TextEditingController();
  final TextEditingController estado = TextEditingController();
  final TextEditingController pais = TextEditingController();
  final TextEditingController aniversario = TextEditingController();
  final TextEditingController notas = TextEditingController();

  Widget form() {
    final bool readOnly = widget.contato == EnumContatoPage.visualizar;

    return getScrollVertical(
      children: [
        Row(
          children: [
            Expanded(child: getFormField(nome, labelText: 'Nome', readOnly: readOnly)),
            spacingHorizontal(),
            Expanded(child: getFormField(sobrenome, labelText: 'Sobrenome', readOnly: readOnly)),
          ],
        ),
        getFormField(empresa, labelText: 'Empresa'),
        Row(
          children: [
            Expanded(child: getFormField(telefone, labelText: 'Telefone', readOnly: readOnly)),
            spacingHorizontal(),
            Expanded(child: getFormField(celular, labelText: 'Celular', readOnly: readOnly)),
          ],
        ),
        getFormField(email, labelText: 'E-mail', readOnly: readOnly),
        getFormField(cep, labelText: 'CEP', readOnly: readOnly),
        getFormField(rua, labelText: 'Rua', readOnly: readOnly),
        getFormField(bairro, labelText: 'Bairro', readOnly: readOnly),
        Row(
          children: [
            Expanded(flex: 2, child: getFormField(cidade, labelText: 'Cidade', readOnly: readOnly)),
            spacingHorizontal(),
            Expanded(child: getFormField(estado, labelText: 'Estado', readOnly: readOnly)),
          ],
        ),
        getFormField(pais, labelText: 'País', readOnly: readOnly),
        getFormField(aniversario, labelText: 'Aniversário', readOnly: readOnly),
        getFormField(notas, labelText: 'Notas', minLines: 3, maxLines: 3, readOnly: readOnly),
      ],
    );
  }

  Widget getButton() {
    return getButtonText(
      text: 'Salvar',
      margin: const EdgeInsets.all(SizeConfig.spacingDefault),
      onPressed: () => out(context),
    );
  }

  String title() {
    switch (widget.contato) {
      case EnumContatoPage.novo:
        return 'Novo contato';

      case EnumContatoPage.editar:
        return 'Editar contato';

      default:
        return 'Visualizar contato';
    }
  }

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      title: title(),
      leading: const BackButton(color: ColorConfig.white),
      body: form(),
      bottom: getButton(),
    );
  }

  @override
  void dispose() {
    nome.dispose();
    sobrenome.dispose();
    empresa.dispose();
    telefone.dispose();
    celular.dispose();
    email.dispose();
    cep.dispose();
    rua.dispose();
    bairro.dispose();
    cidade.dispose();
    estado.dispose();
    pais.dispose();
    aniversario.dispose();
    notas.dispose();

    super.dispose();
  }
}
