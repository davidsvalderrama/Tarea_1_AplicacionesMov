import 'package:flutter/material.dart';


class PageThree extends StatelessWidget {
  const PageThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String b1 = " ͡• ͜ʖ ͡•";
    final String b2 = "¬‿¬";
    final String b3 = "≖_≖";
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Página 3"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MaterialButton(
            color: Colors.grey[300],
            child: Text(
              "($b1)",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop(b1);
            },
          ),
          MaterialButton(
            color: Colors.black,
            child: Text(
              "($b2)",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).pop(b2);
            },
          ),
          MaterialButton(
            color: Colors.grey[300],
            child: Text(
              "($b3)",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop(b3);
            },
          ),
        ],
      ),
    );
  }
}
