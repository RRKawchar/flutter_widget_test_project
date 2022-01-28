import 'package:flutter/material.dart';

class PassDataOne extends StatelessWidget {
  //const PassDataOne({Key? key}) : super(key: key);
  String nm;
  PassDataOne({required this.nm});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: Text(nm),
        ),
      ),
    );
  }
}
