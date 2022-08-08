import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';

// import 'package:practiceoftest/model/user_model.dart';

// getUser()async{
//   var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     var jsonData= jsonDecode(response.body);

//   List<UserModel> users=[];
//   for(var i in jsonData){
//     UserModel user= UserModel(
//       id: i['id'],
//       name: i['name'],
//       username:i['username'],
//       email: i['email'],
//       phone:i['phone']);
//       users.add(user);
//   }
//   return users;
// }

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
