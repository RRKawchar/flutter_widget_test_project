import 'package:flutter/material.dart';

class CardGridView extends StatefulWidget {
  const CardGridView({Key? key}) : super(key: key);

  @override
  _CardGridViewState createState() => _CardGridViewState();
}

class _CardGridViewState extends State<CardGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card and GridView widget'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
            crossAxisCount: 3,
         children: [
         Container(
           height: 200,
           width: 200,
           color: Colors.red,
         ),
           Container(
             height: 200,
             width: 200,
             color: Colors.red,
           ),
           Container(
             height: 200,
             width: 200,
             color: Colors.red,
           ),
           GestureDetector(
             child: Container(

               height: 200,
               width: 200,
               color: Colors.red,
               child: Text('Next Page',style: TextStyle(fontSize: 20.0),),
               alignment: Alignment.center,
             ),
             onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('On tap'),)
              );

             },
           ),

         ],
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
