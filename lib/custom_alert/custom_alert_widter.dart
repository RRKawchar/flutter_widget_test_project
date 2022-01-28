import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/widgets/stack_widget.dart';

class CustomAlertWidget extends StatefulWidget {
  const CustomAlertWidget({Key? key}) : super(key: key);

  @override
  _CustomAlertWidgetState createState() => _CustomAlertWidgetState();
}

class _CustomAlertWidgetState extends State<CustomAlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Positioned(
                                  top: -50,
                                  child: CircleAvatar(
                                    radius: 40,
                                  )),

                              Text(
                                'Alert Dialog',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 23),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'This is an alert dialog.Alert Dialog is very useful '
                                      'and easy to use.Users get alert fefore doing any '
                                      'important opertion.'),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Text('Click'),
      ),
    ));
  }
}
