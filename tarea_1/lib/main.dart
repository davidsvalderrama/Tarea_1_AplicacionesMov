
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tarea_1/page_three.dart';
import 'package:tarea_1/page_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea',
      home: PageOne(),
    );
  }
}

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  //Guarda valor del numero random
  var p2 = "";
  //Guarda el valor del emoji
  var p3 = "";
  //Guarda el valor del dialogo
  var p1 = "";

  _showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();

          return AlertDialog(
            title: Text("Ingrese datos"),
            content: TextField(
              controller: _textController,
              maxLength: 20,
              decoration: InputDecoration(
                labelText: "Ingrese palabra",
                hintText: "Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () async {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                child: Text("Aceptar"),
                onPressed: () {
                  p1 = _textController.text;
                  Navigator.of(context).pop();
                  navigatePageTwo(ctx);
                },
              ),
            ],
          );
        });
  }



  navigatePageThree(BuildContext context) async {
    p3 = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageThree()),
    );
  }

  navigatePageTwo(BuildContext context) async {
    p2 = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageTwo()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea 1"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Text(
                "BIENVENIDOS",
                style: TextStyle(fontSize: 38),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/dart.png'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 35, 0, 40),
                    child: Text(
                      "Seleccione la acción a realizar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Página 2",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  //navigatePageTwo(context);
                  _showAlertDialog(context);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Página 3",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  navigatePageThree(context);
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 35, 0, 40),
                    child: Text(
                      "Pg.2 => $p1$p2",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 40),
                    child: Text(
                      "Pg.3 => $p3",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
