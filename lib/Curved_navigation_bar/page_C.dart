import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  const PageC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text('C',style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
