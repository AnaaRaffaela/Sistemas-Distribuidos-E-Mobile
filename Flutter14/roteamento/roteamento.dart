import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter12/rota/rota.dart';
import 'package:flutter_application_1/rota/rota.dart';

class Roteamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeiraTela(),
        '/segunda': (context) => SegundaTela(),
        '/terceira': (context) => TerceiraTela(),
      },
    );
  }
}
