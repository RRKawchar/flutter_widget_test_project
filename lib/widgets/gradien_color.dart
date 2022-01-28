import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/widgets/appBar_and_text.dart';

class GradienColorWidget extends StatefulWidget {
  const GradienColorWidget({Key? key}) : super(key: key);

  @override
  _GradienColorWidgetState createState() => _GradienColorWidgetState();
}

class _GradienColorWidgetState extends State<GradienColorWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.green,Colors.blue]
              )
            ),
          ),
          title: Text('Gradient Color'),
        ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
                colors: [Colors.pink,Colors.yellow]
              )
            ),
          ),
      ),
    );
  }
}
