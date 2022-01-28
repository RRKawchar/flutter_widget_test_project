import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Alert_Dialog extends StatefulWidget {
  const Alert_Dialog({Key? key}) : super(key: key);

  @override
  _Alert_DialogState createState() => _Alert_DialogState();
}

class _Alert_DialogState extends State<Alert_Dialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text('Error',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      content: Text('This is a simple alert dialog'),
                      actions: [
                        TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('OK')
                        )

                      ],
                    );
                  });
                },
                child: Text('Click')
            )
          ],
        ),
      ),
    );
  }
}
