import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () async {

            },
            child: Text("Clcik")),
      ),
    );
  }
}

class Demo {
  String name;
  int id;
  String email;
  Demo(this.id, this.email, this.name);

  factory Demo.fromJson(Map<String, dynamic> data) {
    return Demo(
        data["data"]["id"], data["data"]["email"], data["data"]["first_name"]);
  }
}
