import 'package:flutter/material.dart';

class MediaQuary extends StatefulWidget {
  const MediaQuary({Key? key}) : super(key: key);

  @override
  _MediaQuaryState createState() => _MediaQuaryState();
}

class _MediaQuaryState extends State<MediaQuary> {
  @override
  Widget build(BuildContext context) {

    var screenheight=MediaQuery.of(context).size.height;
    var containerheight=screenheight/4;

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Center(
        child: Container(
          height: containerheight,
          width: MediaQuery.of(context).size.width/2,
          color: Colors.red,
        ),
      ),
    );
  }
}
