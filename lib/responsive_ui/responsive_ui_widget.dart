import 'package:flutter/material.dart';

class ResponsiveUiWidget extends StatefulWidget {
  const ResponsiveUiWidget({Key? key}) : super(key: key);

  @override
  _ResponsiveUiWidgetState createState() => _ResponsiveUiWidgetState();
}

class _ResponsiveUiWidgetState extends State<ResponsiveUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if(orientation==Orientation.portrait){
            return Container(
              color:Colors.purple ,
            );
          }
          else {
            return Container(
              color: Colors.green,
            );

          }
        },),
    );
  }
}
