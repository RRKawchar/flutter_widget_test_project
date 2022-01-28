import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatefulWidget {
  const BackDropFilterWidget({Key? key}) : super(key: key);

  @override
  _BackDropFilterWidgetState createState() => _BackDropFilterWidgetState();
}

class _BackDropFilterWidgetState extends State<BackDropFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                height: 300,
                  width: 300,
                  color: Colors.red,
                ),
                BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,sigmaY: 5,
                    ),
                  child: Container(
                    color: Colors.white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
    )
    );
  }
}
