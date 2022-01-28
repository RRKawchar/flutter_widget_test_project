import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  _SnackBarWidgetState createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('I am snackbar'),
                duration: Duration(seconds: 3),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: (){

                  },
                ),
                ),

            );

            print('Hello SnackBar');
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
