import 'package:flutter/material.dart';

import '../../rota.dart';

class Botao extends StatelessWidget {
  final String proxima;
  Botao(this.proxima);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(Icons.navigate_next),
      onPressed: () {
        Navigator.pushNamed(context, '${this.proxima}');
      },
    );
  }
}

class Botoes extends StatelessWidget {
  final String proxima;
  Botoes(this.proxima);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.pushNamed(context, '${this.proxima}');
          },
        )
      ],
    );
  }
}

class Rota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(Icons.navigate_next),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SegundaTela()));
      },
    );
  }
}
