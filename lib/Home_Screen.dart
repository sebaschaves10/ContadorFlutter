import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  //Espacio para la definicion de variables

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App Sch."),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de Taps"),
            Text("$contador"),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.reply_all),
              onPressed: (){
                contador--;
                setState((){

                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.autorenew),
              onPressed: (){
                contador=0;
                setState((){

                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                contador++;
                setState((){

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}