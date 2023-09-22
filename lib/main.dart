import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: ListaTransferencia(),
      ),
    ));

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ItemTransferencia('100.0', '1000'),
        ItemTransferencia('200.0', '1000'),
        ItemTransferencia('300.0', '2000'),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final String valor;
  final String numeroConta;


  ItemTransferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(valor),
      subtitle: Text(numeroConta),
    ));
  }
}


