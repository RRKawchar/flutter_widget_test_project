import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/bottomNavigationBarWidget/four_page.dart';
import 'package:flutter_widget_pro/bottomNavigationBarWidget/one_page.dart';
import 'package:flutter_widget_pro/bottomNavigationBarWidget/three_page.dart';
import 'package:flutter_widget_pro/bottomNavigationBarWidget/two_page.dart';

class NavigavionMainPage extends StatefulWidget {
  const NavigavionMainPage({Key? key}) : super(key: key);

  @override
  _NavigavionMainPageState createState() => _NavigavionMainPageState();
}

class _NavigavionMainPageState extends State<NavigavionMainPage> {
  var _currenIndex=0;
  final pages=[
    OnePage(),
    TwoPage(),
    ThreePage(),
    FourPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currenIndex,
        items: [

          BottomNavigationBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.message),
              label: 'Message'
          ),
          BottomNavigationBarItem(

              icon: Icon(Icons.call),
              label: 'Call'
          ),
          BottomNavigationBarItem(

              icon: Icon(Icons.volume_up),
              label: 'Volume'
          ),
          BottomNavigationBarItem(

              icon: Icon(Icons.settings),
              label:'Settings',
          ),
        ],
       onTap: (i){
         setState(() {
           _currenIndex=i;
         });
       },
      ),
      body:pages[
        _currenIndex
      ],
    );
  }
}
