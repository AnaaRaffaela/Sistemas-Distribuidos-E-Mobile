
import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow[600],
      ),
      padding: EdgeInsets.all(100),
      margin: const EdgeInsets.all(100),

          child: FittedBox(
            fit: BoxFit.contain,
            child: Image(image: NetworkImage ('https://picsum.photos/250?image=37',),
          ),
        ),
      ),
    ),
  );
}