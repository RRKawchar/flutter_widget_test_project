import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({Key? key}) : super(key: key);

  @override
  _ExpansionTileWidgetState createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ExpansionTile(
                  title: Text('One'),
                subtitle:Text('This is one'),
                  leading:Icon(Icons.access_time),
                trailing: Icon(Icons.arrow_downward),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.purple,
                    )
                  ],
              ),
              ExpansionTile(
                  title: Text('One'),
                subtitle:Text('This is one'),
                  leading:Icon(Icons.access_time),
                trailing: Icon(Icons.arrow_downward),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.purple,
                    )
                  ],
              ),
              ExpansionTile(
                  title: Text('One'),
                subtitle:Text('This is one'),
                  leading:Icon(Icons.access_time),
                trailing: Icon(Icons.arrow_downward),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.purple,
                    )
                  ],
              ),
              ExpansionTile(
                  title: Text('One'),
                subtitle:Text('This is one'),
                  leading:Icon(Icons.access_time),
                trailing: Icon(Icons.arrow_downward),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.purple,
                    )
                  ],
              ),
              ExpansionTile(
                  title: Text('One'),
                subtitle:Text('This is one'),
                  leading:Icon(Icons.access_time),
                trailing: Icon(Icons.arrow_downward),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.purple,
                    )
                  ],
              ),
            ],
          ),
        )
    );
  }
}
