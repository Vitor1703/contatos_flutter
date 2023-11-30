import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/pages/contatos/contatos_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contatos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConfig.primary),
        useMaterial3: true,
      ),
      home: const ContatosPage(),
    );
  }
}
