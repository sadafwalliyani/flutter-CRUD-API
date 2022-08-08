
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';

getUser()async{
//   Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }
  var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var jsonData= jsonDecode(response.body);

  List<UserModel> users=[];
  for(var i in jsonData){
    UserModel user= UserModel(
      id: i['id'], 
      name: i['name'],
      username:i['username'], 
      email: i['email'],
      phone:i['phone']);
      users.add(user);
  }
  return users;
}