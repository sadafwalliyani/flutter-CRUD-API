import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practiceoftest/services/user_service.dart';

import '../model/user_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () async {
        await postData(user: Data(
          name: "sadaf", email: "absd", username: "dvsjcskjcb"
        ));
            
      },
      child: Icon(Icons.add),
    )));
  }
}
