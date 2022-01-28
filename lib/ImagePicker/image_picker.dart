
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _image;

 Future CameraImage()async{
   var image=await ImagePicker.platform.pickImage(source: ImageSource.camera);
   setState(() {
     _image=File(image!.path);
   });
  }
  Future GeleryImage()async{
    var image=await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image=File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child:_image==null?Center(child: Text('no image selected')):Image.file(_image!),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                  onPressed: (){
                    CameraImage();
                  },
                child: Icon(Icons.camera),
              ),
              SizedBox(width: 20,),
              FloatingActionButton(
                onPressed: (){
                  GeleryImage();
                },
                child: Icon(Icons.photo_library),
              ),
            ],
          )
        ],
      ),
    );
  }

}
