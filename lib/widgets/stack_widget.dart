import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.add),
       ),
        appBar: AppBar(
          title: Text('Stack Widget'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Positioned(
                bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
