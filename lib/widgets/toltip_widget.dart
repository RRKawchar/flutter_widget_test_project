import 'package:flutter/material.dart';

class TolTipWidget extends StatefulWidget {
  const TolTipWidget({Key? key}) : super(key: key);

  @override
  _TolTipWidgetState createState() => _TolTipWidgetState();
}

class _TolTipWidgetState extends State<TolTipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.dashboard),tooltip: "Dashboard",),
              IconButton(onPressed: (){}, icon: Icon(Icons.alarm),tooltip: "Alarm",),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings),tooltip: "Settings",),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite),tooltip: "Favarite",),
            ],
          ),

          Tooltip(
            message: 'Container',
            child: Container(
              height: 250,
              color: Colors.red,

            ),

          )
        ],
      ),
    );
  }
}
