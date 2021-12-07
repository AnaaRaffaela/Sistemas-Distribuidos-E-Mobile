import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorEmRealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: valorEmRealController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => valorEmRealController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Informe o valor em Real'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton.icon(
              label: const Text('Póximo'),
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SegundaRota.caminhoDaRota,
                  arguments: double.parse(valorEmRealController.text),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';
  final TextEditingController cotacaoDoDolarController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double valorEmReal = ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: cotacaoDoDolarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => cotacaoDoDolarController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a Cotação do Dólar',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton.icon(
              label: const Text('Póximo'),
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  TerceiraRota.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                    valorEmReal: valorEmReal,
                    cotacao: double.parse(cotacaoDoDolarController.text),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  converter(double valorEmReal, double cotacao) => valorEmReal / cotacao;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cotação'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'R\$ ${argumentos.valorEmReal.toStringAsFixed(2)} = US\$ ${converter(argumentos.valorEmReal, argumentos.cotacao).toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.amber[700],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  double valorEmReal;
  double cotacao;

  ArgumentosDaRota({required this.valorEmReal, required this.cotacao});
}
