import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: Column(children: [
    SizedBox(height: 200,),
  Image(image: AssetImage('assests/logo.PNG',),
  height:150,
  width: 200,),
  Text("Let's you in"),
  TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
      filled: true,
      hintStyle: TextStyle(color: Color.fromARGB(255, 11, 11, 11),
      fontSize: 18,
      wordSpacing: 0.3),
hintText: "Continue with Facebook",

prefixIcon: Icon(
  Icons.facebook, color: Colors.blue,)
    ),
  )
],)
      
    );
  }
}
