import 'package:flutter/material.dart';

import 'componentes/botoes/botao.dart';

import 'corpo/corpo.dart';
import 'telas/tela.dart';

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
    Botoes botao = Botoes('/quarta');

    return Tela('Terceira Tela', corpo, botao);
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Corpo corpo = Corpo('4');
    Botoes botao = Botoes('/segunda');

    return Tela('Quarta Tela', corpo, botao);
  }
}
