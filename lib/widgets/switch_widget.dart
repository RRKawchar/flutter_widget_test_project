import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _value==false?Colors.black26:Colors.lightGreen,
      body: Center(
        child: Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value=value;
              print(_value);
            });
          },
        ),
      ),
    );
  }
}
