import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Text('Message',
        style: TextStyle(fontSize: 50),),
    ),
    );
  }
}
