import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/Introduction_screen/home_page.dart';

class FormValidatoClass extends StatefulWidget {
  const FormValidatoClass({Key? key}) : super(key: key);

  @override
  _FormValidatoClassState createState() => _FormValidatoClassState();
}

class _FormValidatoClassState extends State<FormValidatoClass> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [
              SizedBox(height: 20.0,),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter your age';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter your phone';
                  }
                  return null;
                },
              ),

              RaisedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                    }
                  }
              )

            ],
          ),
        ),

      ),
    );
  }
}
