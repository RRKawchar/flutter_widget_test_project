import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/Curved_navigation_bar/Page_B.dart';
import 'package:flutter_widget_pro/Curved_navigation_bar/Page_D.dart';
import 'package:flutter_widget_pro/Curved_navigation_bar/page_A.dart';
import 'package:flutter_widget_pro/Curved_navigation_bar/page_C.dart';
import 'package:flutter_widget_pro/Curved_navigation_bar/page_E.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurvedNavigationWidget extends StatefulWidget {
  const CurvedNavigationWidget({Key? key}) : super(key: key);

  @override
  _CurvedNavigationWidgetState createState() => _CurvedNavigationWidgetState();
}

class _CurvedNavigationWidgetState extends State<CurvedNavigationWidget> {
  var _page=0;
  final pages=[
    PageA(),
    PageB(),
    PageC(),
    PageD(),
    PageE(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor:Colors.blue,
        animationCurve: Curves.easeInOutQuad,
        animationDuration: Duration(seconds: 600),
        onTap: (index){
         setState(() {
           _page=index;
         });
        },
        items: [
          GestureDetector(
              child: Icon(Icons.email),
          onTap: (){
                print('Message');
              ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Message'))
              );
          },
          ),
          GestureDetector(child: Icon(Icons.settings),
            onTap: (){
              print('Setting');
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Settings'))
              );
            },
          ),
          Icon(Icons.volume_up),
          Icon(Icons.shopping_cart),
          Icon(Icons.person),

        ],

      ),
      body: pages[_page],
    );
  }
}
