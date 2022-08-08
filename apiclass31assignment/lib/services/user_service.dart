import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';


getUsers() async {
  List userList = [];
  String url = 'https://jsonplaceholder.typicode.com/users';

  var response = await http.get(
    Uri.parse(url),
  );
  var data = jsonDecode(response.body);
  for (var i in data) {
    userList.add(UserModel.fromJson(i));
  }

  return userList;
}
