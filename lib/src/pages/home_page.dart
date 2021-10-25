import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  //Esta clase es con valores estaticos, por lo que debe de contener finals.

  final text_style = new TextStyle(fontSize:15);

  final cont = 10;

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numbers of clicks:", style: text_style),
            Text("$cont", style: text_style),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('hello word');
        },
      ),
      //para posicion de boton add floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,  
    );
  }
}