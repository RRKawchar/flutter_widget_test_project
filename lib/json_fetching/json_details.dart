import 'package:flutter/material.dart';

class JsonDetailsWidget extends StatelessWidget {
  //const JsonDetailsWidget({Key? key}) : super(key: key);

  var recivedata;
  JsonDetailsWidget({this.recivedata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          child: Image.network(recivedata["avatar"]),
        ),
      ),
    );
  }
}
