import 'package:flutter/material.dart';
import 'package:flutter_application_1/Flutter16/exercicioTres/rota.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView(
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(80),
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                'https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RotaGenerica()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

