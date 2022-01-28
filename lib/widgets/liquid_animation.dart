import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class liquidAnimation extends StatelessWidget {
  const liquidAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

     final pages=[
       Container(color: Colors.red,),
       Container(color: Colors.yellowAccent,),
       Container(color: Colors.green,),
       Container(color: Colors.blue,)
     ];

    return Scaffold(
      body:Center(
      child: LiquidSwipe(

        pages:pages,


      ),
      ),
    );
  }
}
