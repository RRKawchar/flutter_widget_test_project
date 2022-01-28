import 'package:flutter/material.dart';

class AppBarAndText extends StatefulWidget {
  const AppBarAndText({Key? key}) : super(key: key);

  @override
  _AppBarAndTextState createState() => _AppBarAndTextState();
}

class _AppBarAndTextState extends State<AppBarAndText> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text('AppBar and Text widget')
        ),
       body: Center(
           child: Text('This is my first app')),
      ),
    );
  }
}
