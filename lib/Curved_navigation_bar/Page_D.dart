import 'package:flutter/material.dart';

class PageD extends StatelessWidget {
  const PageD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Text('D',style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
