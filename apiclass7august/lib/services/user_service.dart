import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';

//get function
getUser() async {
  var url = Uri.parse("https://maaz-api.tga-edu.com/api/users");
  var response = await http.get(url);
  var responseData = jsonDecode(response.body);
  return UserModel.fromJson(responseData);
}

//post function
postData(Data model) async {
  var uri = Uri.parse("https://maaz-api.tga-edu.com/api/users");
  await http.post(uri,
      headers: {'content-type': 'applicattion/json'},
      body: jsonEncode(model.toJson()));
}

//update function
updateData({required Data model, required id}) async {
  var uri = Uri.parse('https://maaz-api.tga-edu.com/api/users/${id}');
  await http.put(uri,
      headers: {'content-type': 'applicattion/json'},
      body: jsonEncode(model.toJson()));
}

//delete function
deleteData({required id}) async {
  var uri = Uri.parse('https://maaz-api.tga-edu.com/api/users/${id}');
  await http.delete(
    uri,
    headers: {'content-type': 'applicattion/json'},
  );
}
