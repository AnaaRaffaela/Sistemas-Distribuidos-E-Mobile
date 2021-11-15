import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter14/rota/componentes/componente.dart';
import 'tela.dart';

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('1');
    Botao botao = Botao('/segunda');

    return Tela('Primeira Tela', corpo, botao);
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('2');
    Botoes botao = Botoes('/terceira');

    return Tela('Segunda Tela', corpo, botao);
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('3');
    Botoes botao = Botoes('/');

    return Tela('Terceira Tela', corpo, botao);
  }
}
