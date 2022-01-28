import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  var _selected="Choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_selected,style: TextStyle(color: Colors.purple,fontSize: 30),),
            DropdownButton(

                items: [

                  DropdownMenuItem(child: Text('Easy'),value: 'Easy',),
                  DropdownMenuItem(child: Text('Normal'),value: 'Normal',),
                  DropdownMenuItem(child: Text('Hard'),value: 'Hard',),
                ],
              onChanged: (_value){
                setState(() {
                  _selected=_value as String;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
