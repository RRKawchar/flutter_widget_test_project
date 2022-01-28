import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget extends StatefulWidget {
  const ToastWidget({Key? key}) : super(key: key);

  @override
  _ToastWidgetState createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Fluttertoast.showToast(msg: 'Toast message',
                toastLength: Toast.LENGTH_LONG,
              backgroundColor: Colors.red,
              textColor: Colors.black,
                gravity: ToastGravity.BOTTOM
            );
          },
          child: Text('Click '),
        ),
      ),
    );
  }
}
