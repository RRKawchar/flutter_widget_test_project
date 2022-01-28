import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/HeroWidget/hero_second_page.dart';
import 'package:flutter_widget_pro/widgets/appBar_and_text.dart';

class HeroFirstPage extends StatefulWidget {
  const HeroFirstPage({Key? key}) : super(key: key);

  @override
  _HeroFirstPageState createState() => _HeroFirstPageState();
}

class _HeroFirstPageState extends State<HeroFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero widget'),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
            child: Hero(
              tag: "add",
              child: Icon(Icons.add_a_photo,size: 50,),
             ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>HeroSecondPage()));
            },
          ),
        ),
      ),
    );
  }
}
