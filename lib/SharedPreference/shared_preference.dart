import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesWidget extends StatefulWidget {
  const SharedPreferencesWidget({Key? key}) : super(key: key);

  @override
  _SharedPreferencesWidgetState createState() => _SharedPreferencesWidgetState();
}

class _SharedPreferencesWidgetState extends State<SharedPreferencesWidget> {
  int counter=0;
  String appbar="Shared Preferences";

  loadincrement()async{

    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      counter=pref.getInt('counter')??0;
    });
  }

  increment()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }
  @override
  void initState() {
    loadincrement();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have clicked $counter times',
            style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
