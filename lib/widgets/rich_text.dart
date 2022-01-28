import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  _RichTextWidgetState createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(text: 'Have you any account? ',
              style: TextStyle(color: Colors.blue,fontSize: 20,fontStyle: FontStyle.italic),
          children: [
            TextSpan(text: 'Login',style: TextStyle(color: Colors.red,
                fontSize: 25,fontWeight: FontWeight.bold))
          ]
          ),

        ),
      ),
    );
  }
}
