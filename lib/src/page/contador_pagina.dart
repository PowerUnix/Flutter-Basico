import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  createState() {
    return ContadorState();
  }
}

class ContadorState extends State<Contador> {
  @override
  var numero = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("La app")),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[_ElTexto()],
          ),
        ),
      ),
      floatingActionButton: _ElsBotones(),
    );
  }

  //Estos son los widgets de la aplicación

  Widget _ElTexto() {
    return Text("Este es mi numero $numero");
  }

  Widget _ElsBotones() {
    return Row(children: <Widget>[
      FloatingActionButton(onPressed: _Incrementar, child: Icon(Icons.add)),
      SizedBox(width: 30),
      FloatingActionButton(onPressed: Decrementar, child: Icon(Icons.remove)),
      FloatingActionButton(onPressed: Vaciar, child: Icon(Icons.remove_red_eye))
    ], mainAxisAlignment: MainAxisAlignment.center);
  }

  //Función de los botones

  void _Incrementar() {
    setState(() {
      numero++;
    });
  }

  void Decrementar() {
    setState(() {
      numero--;
    });
  }

  void Vaciar() {
    setState(() {
      numero = 0;
    });
  }
}
