import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/provider/data.dart';
import 'package:provider/provider.dart';

class ReceiveData extends StatelessWidget {
  const ReceiveData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerdata=Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(providerdata.value.toString()),
      ),
    );
  }
}
