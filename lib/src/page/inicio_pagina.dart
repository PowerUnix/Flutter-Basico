import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  final tamanyotexto = TextStyle(fontSize: 29);
  final int conteo = 10;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Maxima",
          style: tamanyotexto,
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("Dato 1"), Text("$conteo")],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hola mundo");
          },
          child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
