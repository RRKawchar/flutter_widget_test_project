import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile Widget'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('easy Explanation'),
              subtitle: Text('learn everyThing with easy explanation'),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('easy Explanation'),
              subtitle: Text('learn everyThing with easy explanation'),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('easy Explanation'),
              subtitle: Text('learn everyThing with easy explanation'),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('easy Explanation'),
              subtitle: Text('learn everyThing with easy explanation'),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('easy Explanation'),
              subtitle: Text('learn everyThing with easy explanation'),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo),
            ),
          ],
        ),
      ),
    );
  }
}
