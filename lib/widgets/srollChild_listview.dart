import 'package:flutter/material.dart';

class SingleChilListView extends StatefulWidget {
  const SingleChilListView({Key? key}) : super(key: key);

  @override
  _SingleChilListViewState createState() => _SingleChilListViewState();
}

class _SingleChilListViewState extends State<SingleChilListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChild and listView'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red),
              ), SizedBox(height: 10,),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
  }
}
