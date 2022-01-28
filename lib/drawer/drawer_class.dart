import 'package:flutter/material.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  final _globalekey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalekey,
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: (){

            _globalekey.currentState!.openDrawer();

          },
        ),
      ),
      drawer: Drawer(),
      body: Center(
        child:TextButton(
          onPressed: (){
            _globalekey.currentState!.openDrawer();
          },
          child: Text('Drawer'),
        ),
      ),
    );
  }
}
