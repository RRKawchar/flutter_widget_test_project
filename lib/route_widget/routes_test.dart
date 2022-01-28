import 'package:flutter/material.dart';

class RoutesTest extends StatefulWidget {
  const RoutesTest({Key? key}) : super(key: key);

  @override
  _RoutesTestState createState() => _RoutesTestState();
}

class _RoutesTestState extends State<RoutesTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: '/',
      routes: {
        '/first':(context)=>FirstScreen(),
        '/second':(context)=>SecondScreen()
      },
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: OutlineButton(
          onPressed: (){
            Navigator.pushNamed(context, '/second');
          },
          child: Text('First Screen'),
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: OutlineButton(
          onPressed:(){},
          child:Text('Second Screen'),
        ),
      ),
    );
  }
}


