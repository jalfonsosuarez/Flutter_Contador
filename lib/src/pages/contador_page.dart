

import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  // Los StateFulWidget preceisan de un State para funcionar,
  // por eso se crea la clase privada _ContadorPageState que es
  // ejecutada desde aquí.

  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage> {

  // el guión bajo delante de una propiedad o método indica que es privada de la clase

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _conteo = 0;

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
            Text( 'Número de taps:', style: _estiloTexto ),
            Text( '$_conteo', style: _estiloTexto ),
          ],

        ),

      ),

      floatingActionButton: _crearBotones()

    );
  }

  Widget _crearBotones() {

    return Row(

      mainAxisAlignment: MainAxisAlignment.end,

      children: <Widget>[
        SizedBox( width: 30.0,),

         // Se llama al método _reset sin poner paréntesis para evitar que se ejecute al crear el Widget.
        FloatingActionButton(
        child: Icon( Icons.exposure_zero ),
        onPressed: _reset ),

        Expanded(child: SizedBox()),

        FloatingActionButton(
        child: Icon( Icons.remove ),
        onPressed: _sustraer ),

        SizedBox( width: 5.0,),

        FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: _agregar )

      ],
    );
  }

  void _agregar() {
    // setState redibuja el Widget.
    setState(() => _conteo++ );
    
  }

  void _sustraer() {

    if ( _conteo > 0 ) {
      setState(() => _conteo-- );
    }
    
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }

}