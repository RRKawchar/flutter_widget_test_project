import 'package:flutter/material.dart';

class ButtonSheetWidget extends StatefulWidget {
  const ButtonSheetWidget({Key? key}) : super(key: key);

  @override
  _ButtonSheetWidgetState createState() => _ButtonSheetWidgetState();
}

class _ButtonSheetWidgetState extends State<ButtonSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            showModalBottomSheet(context: context,builder: (context){
              return Container(
                height: 250,
                child: ListView(
                  children: [
                    GestureDetector(
                      child: ListTile(
                        title: Text('One'),
                        subtitle: Text('This is one'),
                        trailing: Icon(Icons.access_alarm),
                      ),
                      onTap: (){
                        print('OnTap');
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Hello!This is button sheet"),)
                        );

                      },
                    ),
                    ListTile(
                      title: Text('One'),
                      subtitle: Text('This is one'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('One'),
                      subtitle: Text('This is one'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                    ListTile(
                      title: Text('One'),
                      subtitle: Text('This is one'),
                      trailing: Icon(Icons.access_alarm),
                    ),
                  ],
                ),

              );
            });
          },
          child:Text('Click me') ,
        ),
      ),
    );
  }
}
