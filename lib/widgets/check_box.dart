import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_value==true?"Checked":"Unchecked"),
            Checkbox(
                value: _value,
                onChanged: (value){
                  setState(() {
                    _value=value!;
                    print(_value);
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}
