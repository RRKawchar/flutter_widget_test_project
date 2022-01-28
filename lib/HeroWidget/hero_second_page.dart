import 'package:flutter/material.dart';

class HeroSecondPage extends StatefulWidget {
  const HeroSecondPage({Key? key}) : super(key: key);

  @override
  _HeroSecondPageState createState() => _HeroSecondPageState();
}

class _HeroSecondPageState extends State<HeroSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GestureDetector(
            child: Hero(
              tag: "add",
              child: Icon(Icons.add_a_photo,
                size: 250,color: Colors.blue,
              ),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
