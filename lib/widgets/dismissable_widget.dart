

import 'package:flutter/material.dart';

class DismissabeWidget extends StatefulWidget {
  const DismissabeWidget({Key? key}) : super(key: key);

  @override
  _DismissabeWidgetState createState() => _DismissabeWidgetState();
}

class _DismissabeWidgetState extends State<DismissabeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key:ValueKey('abc'),
          background: Container(
            color: Colors.red,
            child: Icon(Icons.delete),
          ),
          secondaryBackground: Container(
            color: Colors.blue,
            child: Icon(Icons.delete),
          ),
          child: ListTile(
            title: Text('Hello'),
            subtitle: Text('I am Riyazur Rohman Kawchar'),
            trailing: Icon(Icons.ac_unit),

          ),
        ),
      ),
    );
  }
}
