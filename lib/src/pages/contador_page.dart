import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  @override
  createState()=> _ContadorPageState(); //Hace retornar _ContadorPageState()
}

//Solo para ser utilizado en este archivo
class _ContadorPageState extends State <ContadorPage> {
  final _text_style = new TextStyle(fontSize:15);

  int _cont = 10;

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numbers of tabs:", style: _text_style),
            Text("$_cont", style: _text_style),
          ],
        ),
      ),
      /*forma sencilla de hacer un button
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          //print('hello word');
          
          setState((){
            _cont++;// Todo lo que se encuentre dentro de este setState() se actulizara al dar click.
          });
        },
      ),
      //para posicion de boton add floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,  
      */
      floatingActionButton: _crearBotones(), //Llamamos al metodo para crear botones
    );
  }


  //Metodo para crear botones
  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end, //Para dar posicion del contenido
      children: <Widget>[
        SizedBox( width:30.0 ), //Para dar un espacio entre dos widgets
        FloatingActionButton(child: Icon(Icons.add), onPressed:_agregar),
        Expanded(child: SizedBox()),//Da un espacio grande entre widgets
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed:_zero),
        Expanded(child: SizedBox()),//Da un espacio grande entre widgets
        FloatingActionButton(child: Icon(Icons.remove), onPressed:_quitar),        
      ]
    );
    //return FloatingActionButton(child: Icon(Icons.add_alarm),onPressed: null);
  }
  //Metodo para sumar el contador.
  void _agregar(){
    setState(()=> _cont++);
  }
  void _quitar(){
    setState(()=>_cont--);
  }
  void _zero(){
    setState(()=>_cont=0);
  }
}