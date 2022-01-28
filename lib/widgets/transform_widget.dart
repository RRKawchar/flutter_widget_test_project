import 'dart:math';

import 'package:flutter/material.dart';

class TransFormWidget extends StatefulWidget {
  const TransFormWidget({Key? key}) : super(key: key);

  @override
  _TransFormWidgetState createState() => _TransFormWidgetState();
}

class _TransFormWidgetState extends State<TransFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.translate(
         offset: Offset(100,-150),
          child: Container(
            height: 150,
            width: 150,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
