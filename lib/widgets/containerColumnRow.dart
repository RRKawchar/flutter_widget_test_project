import 'package:flutter/material.dart';

class ContainerColumnRow extends StatefulWidget {
  const ContainerColumnRow({Key? key}) : super(key: key);

  @override
  _ContainerColumnRowState createState() => _ContainerColumnRowState();
}

class _ContainerColumnRowState extends State<ContainerColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Column Row widget'),
      ),
      body: Row(
        children: [
          SizedBox(width: 10,),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red),
          ), SizedBox(width: 10,),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red),
          ),
          SizedBox(width: 10,),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red),
          ),
          SizedBox(width: 10,),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red),
          )
        ],
      ),
    );
  }
}
