import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';

getUsers() async {
  List userList = [];
  String url = 'https://maaz-api.tga-edu.com/api/users';

  var response = await http.get(
    Uri.parse(url),
  );
  var data = jsonDecode(response.body);
  for (var i in data) {
    userList.add(UserModel.fromJson(i));
  }

  return userList;
}

postData({required Data user}) async {
  var url = Uri.parse('https://maaz-api.tga-edu.com/api/users');
  var response = await http.post(url,
      headers: {
        "Conent-type": "application/json",
        "Accept": "application/json"
      },
      body: jsonEncode(user.toJson()));
  print(response.body);
}
