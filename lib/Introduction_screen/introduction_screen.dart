import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/Introduction_screen/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction_Screen extends StatefulWidget {
  const Introduction_Screen({Key? key}) : super(key: key);

  @override
  _Introduction_ScreenState createState() => _Introduction_ScreenState();
}

class _Introduction_ScreenState extends State<Introduction_Screen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title:'First',
          body: 'This is our first description',
          image: Image.asset('assets/images/image_one.jpg',width: 350,),
        ),
        PageViewModel(
          title:'Second',
          body: 'This is our second description',
          image: Image.asset('assets/images/image_two.jpg',width: 350,),
        ),
        PageViewModel(
          title:'Third',
          body: 'This is our third description',
          image: Image.asset('assets/images/image_three.jpg',width: 350,),
        ),

      ],
      onDone: (){
        Navigator.push(context, CupertinoPageRoute(builder: (_)=>HomePage()));

      },
      done: Text('done'),
      showSkipButton: true,
      showNextButton: false,
      skip: Text('Skip'),
      dotsDecorator: DotsDecorator(
        size: Size(10.0,10.0),
        color: Colors.grey,
        activeSize: Size(22.0,12.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )

      ),
    );
  }
}
