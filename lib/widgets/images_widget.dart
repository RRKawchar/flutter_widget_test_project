import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images widget'),

        ),
        body:Center(
          child: ListView(
            children: [
              Image.asset('assets/images/myprofile.jpg'),
              SizedBox(height: 10,),
              CircleAvatar(
                radius: 120,

                child:Image.network("https://media.istockphoto.com/photos/concept-of-an-open-magic-book-open-pages-with-water-and-land-and-picture-id1279460648?b=1&k=20&m=1279460648&s=170667a&w=0&h=uZa830sWo8hlFN0Y7FnQ14giNC0Z2EBNuTMuNJeJhQg="),
              )
            ],
          ),
        ),
      ),
    );
  }
}
