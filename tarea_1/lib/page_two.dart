import 'package:flutter/material.dart';
import 'dart:math';

class PageTwo extends StatefulWidget {
  
  PageTwo({Key key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final rr = Random();
  int dataSet = 0;

  void generate(){
    setState(() {
      dataSet = rr.nextInt(1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[400], Colors.blue[200]],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Página 2"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 60, 15, 15),
                child: Text(
                  "Genere número random",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "$dataSet",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.white,
                child: Text(
                  "Generar",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  generate();
                },
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.white,
                child: Text(
                  "Guardar",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop(dataSet.toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



