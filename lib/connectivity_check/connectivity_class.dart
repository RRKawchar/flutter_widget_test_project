import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConnectivityClass extends StatefulWidget {
  const ConnectivityClass({Key? key}) : super(key: key);

  @override
  _ConnectivityClassState createState() => _ConnectivityClassState();
}

class _ConnectivityClassState extends State<ConnectivityClass> {

  StreamSubscription? subsription;

  Future checkConnection()async{
    var connectivityCheck= await (Connectivity().checkConnectivity());
    if(connectivityCheck==ConnectivityResult.mobile){
     Fluttertoast.showToast(msg: "connect with mobile");
    }
    else if(connectivityCheck==ConnectivityResult.wifi){
      Fluttertoast.showToast(msg: "connnect with wifi");
    }
    else{
      Fluttertoast.showToast(msg: "Not Connected");
    }
  }
  @override
  void initState() {
    subsription=Connectivity().onConnectivityChanged.listen((event) {checkConnection(); });
    super.initState();
  }
  @override
  void dispose() {
    subsription!.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlineButton(
          onPressed:checkConnection,
          child: Text('Check Connection'),
        ),
      ),

    );
  }
}
