import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/pass_data/pass_data_one.dart';

class MianPassData extends StatelessWidget {
  //const MianPassData({Key? key}) : super(key: key);
  var name = "Riyazur Rohman Kawchar";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PassDataOne(nm:name,)));
            },
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ),
    );
  }
}
