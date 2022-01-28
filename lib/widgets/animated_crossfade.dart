import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCrossfadeWidget extends StatefulWidget {
  const AnimatedCrossfadeWidget({Key? key}) : super(key: key);

  @override
  _AnimatedCrossfadeWidgetState createState() => _AnimatedCrossfadeWidgetState();
}

class _AnimatedCrossfadeWidgetState extends State<AnimatedCrossfadeWidget> {
  bool _check=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(

              firstChild: Container(
                height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange,

              ),
                child: RaisedButton(
                  onPressed: () {

                   setState(() {
                     _check=false;
                   });

                  },
                  child: Text('Click'),

                ),
              ),
              secondChild: Center(
                child: Text('Succesully LogIn',style: TextStyle(fontSize: 59),),
              ),
              crossFadeState: _check?CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 1),

            ),
          )
        ],
      ),
    );
  }
}
