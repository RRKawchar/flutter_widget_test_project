import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_widget_pro/json_fetching/json_details.dart';
import 'package:http/http.dart' as http;

class JsonMainPage extends StatefulWidget {
  const JsonMainPage({Key? key}) : super(key: key);

  @override
  _JsonMainPageState createState() => _JsonMainPageState();
}

class _JsonMainPageState extends State<JsonMainPage> {
  var _data;
  Future getData() async {
    var response =
        await http.get(Uri.parse("https://reqres.in/api/users?pages=2"));
    setState(() {
      var decode = json.decode(response.body);
      _data = decode["data"];
      print(_data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JSON FETCHING'),
        ),
        body: ListView.builder(
            itemCount: _data == null ? 0 : _data.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(_data[index]["first_name"]),
                subtitle: Text(_data[index]["email"]),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JsonDetailsWidget(
                                recivedata: _data[index],
                              )));
                },
              );
            }));
  }
}
