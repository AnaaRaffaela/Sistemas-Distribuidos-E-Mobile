import 'package:flutter/material.dart';

void main() {
  String nome = "Ana Rafaela";
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.green,
          ), //TextStyle.
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.pink,
                backgroundColor: Colors.blue,
              ),
            ),
            TextSpan(
              text: '! \nBom dia!',
            ),
            TextSpan(
              text: '\n\nHoje, você terá que escrever um aplicativo em Flutter. O aplicativo deve imprimir um texto na tela. O texto possui trexos com estilos diferentes.',
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: '\n\nBoa prática !',
            style: TextStyle(
                color: Colors.lightBlue[200],
                backgroundColor: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
