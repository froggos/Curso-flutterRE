import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaccion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaccion> transacciones = [
    Transaccion(
        id: "123809",
        titulo: "Nuevos zapatos",
        cantidad: 69990,
        fecha: DateTime.now()),
    Transaccion(
        id: "278493829",
        titulo: "Mercadería semanal",
        cantidad: 38420,
        fecha: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("Chart!"),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Titulo"),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Cantidad"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Agregar",
                        style: TextStyle(
                          color: Colors.purple,
                        )),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transacciones.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$${tx.cantidad}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.titulo,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          DateFormat("dd/MM/yyyy").format(tx.fecha),
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
