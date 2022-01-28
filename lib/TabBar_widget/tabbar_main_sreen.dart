import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/TabBar_widget/tab_one.dart';
import 'package:flutter_widget_pro/TabBar_widget/tab_three.dart';
import 'package:flutter_widget_pro/TabBar_widget/tab_two.dart';

class TabBarMainSreen extends StatelessWidget {
  const TabBarMainSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
         appBar: AppBar(
           title: TabBar(
             tabs: [
               Tab(icon: Icon(Icons.email),),
               Tab(icon: Icon(Icons.favorite),),
               Tab(icon: Icon(Icons.alarm),),
             ],

           ),
         ),
        body: TabBarView(
          children: [
            TabOne(),
            TabTwo(),
            TabThree()
          ],
        ),
      ),
    );
  }
}
