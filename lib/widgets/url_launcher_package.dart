
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPackage extends StatefulWidget {
  const UrlLauncherPackage({Key? key}) : super(key: key);

  @override
  _UrlLauncherPackageState createState() => _UrlLauncherPackageState();
}

class _UrlLauncherPackageState extends State<UrlLauncherPackage> {
  static const url="https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                onPressed: (){
                  launch(url);
                },
              child: Text("website"),

            ),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: (){
                launch("tel:32483574");
              },
              child: Text("Call"),

            ),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: (){
                launch("sms:89734523");
              },
              child: Text("SMS"),

            ),
          ],
        ),
      ),
    );
  }
}
