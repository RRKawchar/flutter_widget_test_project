import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/pageRiview/page1.dart';
import 'package:flutter_widget_pro/pageRiview/page2.dart';
import 'package:flutter_widget_pro/pageRiview/page3.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController _pageController=PageController(
    initialPage: 0
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView(
      scrollDirection: Axis.vertical,
      controller: _pageController,
      children: [
        Page2(),
        Page1(),
        Page3(),
      ],
    ),
    );
  }
}
