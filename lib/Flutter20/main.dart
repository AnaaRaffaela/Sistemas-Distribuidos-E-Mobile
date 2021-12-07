import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int indice = 0;

  static const List<Image> telas = <Image>[
    Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/9374900/pexels-photo-9374900.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
    ),
    Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/8280100/pexels-photo-8280100.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
    ),
    Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/8643655/pexels-photo-8643655.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
    )
  ];

  void selecionar(int indice) {
    setState(() => this.indice = indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: telas.elementAt(this.indice),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Animais',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Programação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            label: 'Alimentação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.green,
        onTap: selecionar,
      ),
    );
  }
}
