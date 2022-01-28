import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/Splash_Screen/second_splash_sreen.dart';
import 'package:lottie/lottie.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

@override
  void initState() {
    // TODO: implement initState
  Future.delayed(Duration(seconds: 5),(){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondSplashScreen()));
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black12,
        body: Center(
          child:Lottie.asset('animated/24703-food-animation.json'),
        ));
  }
}
