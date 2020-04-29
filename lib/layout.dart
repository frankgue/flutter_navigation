import 'package:flutter/material.dart';
import 'dart:async';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: dialog,
        child: Text('Appuyer'),
      ),
    );
  }

  void pressed() {
    setState(() {
      print('DONE');
    });
  }

  void snack() {
    SnackBar snackBar = new SnackBar(
      content: Text("Hello, comment ca va?"),
      duration: new Duration(seconds: 10),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<Null> alerte() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text("Titre de notre Dialog"),
            content: Text("Description, information sur notre Dialog"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  print("Confirmer");
                  Navigator.pop(context);
                },
                child: Text('Confirmer'),
              ),
              FlatButton(
                onPressed: () {
                  print("Annuler");
                  Navigator.pop(context);
                },
                child: Text("Annuler"),
              )
            ],
          );
        });
  }


  Future<Null> dialog() async{
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return new SimpleDialog(
          title: Text("Titre de notre Dialog"),
          children: <Widget>[
            Text("Description, information sur notre Dialog"),
            RaisedButton(
              onPressed: () {
                print('click click');
                Navigator.pop(context);
              },
              child: Text("Boutton"),
            )
          ],
        );
      }
    );
  }

}
