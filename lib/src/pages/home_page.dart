
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  // Al ser un StatelessWidget, todas las propiedades y métodos deben ser final o const
  // lo que impide poder cambiarles el valor en tiempo de ejecución.

  final estiloTexto = new TextStyle( fontSize: 25 );

  final conteo = 10;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text( 'Título' ),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text( 'Número de clicks:', style: estiloTexto ),
           Text( '$conteo', style: estiloTexto ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon( Icons.add ),
      onPressed: () {
        print( "Hola mundo" );
        // conteo++;
      },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
  );
}



}