import 'package:flutter/material.dart';

class PageE extends StatelessWidget {
  const PageE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text('C',style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
