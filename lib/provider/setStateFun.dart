import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/provider/data.dart';
import 'package:flutter_widget_pro/provider/receive.dart';


import 'package:provider/provider.dart';


class SetStateFunc extends StatefulWidget {
  const SetStateFunc({Key? key}) : super(key: key);

  @override
  _SetStateFuncState createState() => _SetStateFuncState();
}

class _SetStateFuncState extends State<SetStateFunc> {

  @override
  Widget build(BuildContext context) {



    return SafeArea(
        child: Scaffold(
         body: _myBody(),

        ),
      );

  }
}
class _myBody extends StatelessWidget {
  const _myBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
        create: (context)=>Data(),

        child: Builder(
          builder: (BuildContext context) {
            final providerdata=Provider.of<Data>(context);
            return Scaffold(
              appBar: AppBar(
                title:Text('Provider class')
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Value : '+providerdata.value.toString(),
                    style: TextStyle(fontSize: 80),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          providerdata.Inrement();
                        },
                        child: Text('Click')
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>ReceiveData()));
                        },
                        child: Text('Next page')
                    ),
                    SizedBox(height: 10,),
                    Text(providerdata.name)
                  ],
                ),
              ),
            );
          },

        ),
                   );




  }
}

