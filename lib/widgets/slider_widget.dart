import 'package:flutter/material.dart';

class Slider_Widget extends StatefulWidget {
  const Slider_Widget({Key? key}) : super(key: key);

  @override
  _Slider_WidgetState createState() => _Slider_WidgetState();
}

class _Slider_WidgetState extends State<Slider_Widget> {
  var _value=10.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Hello',style: TextStyle(fontSize: _value),),
            Slider(

              min: 10,
              max: 50,
              label: 'Easy Explanation',
                value: _value,
                onChanged: (value){
                  setState(() {
                    _value=value;
                  });
                }
            )
          ],
        )
      ),
    );
  }
}
