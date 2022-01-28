import 'package:flutter/material.dart';

class expandedWidget extends StatelessWidget {
  const expandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child: Container(
              color: Colors.green,
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )
          )
        ],
      ),
    );
  }
}
