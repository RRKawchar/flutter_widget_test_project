import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: AnimatedContainer(
          height: _value==false?100:300,
          width: _value==false?80:280,
          color: Colors.purple,
          duration: Duration(seconds: 4),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         setState(() {
           _value=!_value;
         });
        },
        child: Text('Click',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
