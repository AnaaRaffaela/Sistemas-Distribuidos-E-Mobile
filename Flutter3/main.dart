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
              ),
            ),
            TextSpan(
              text: '! \nBom dia!',
            ),
          ],
        ),
      ),
    ),
  );
}
