
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiceoftest/Pages/Tabbar.dart';
import 'package:practiceoftest/bottomnavigation/bnbar.dart';


class Login extends StatefulWidget {
  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

signIntoApp() async {
    try {
    final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: emailcon.text,
        password: passwordcon.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('no user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('wrong password provided for that user');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
 Scaffold(

        body:
         Center(          
          child: Expanded(
            child: SingleChildScrollView(
               physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Image(
                          image: AssetImage('assests/Vector2.png'),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                      
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                          child: TextField(
                            controller: emailcon,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w700,
                                  wordSpacing: 0.3,
                                ),
                                hintText: 'Enter Your E-mail',
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xffFE2550),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: passwordcon,
                            obscureText: true,
                            /* ... */
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  //fontWeight: FontWeight.w700,
                                  wordSpacing: 0.3,
                                ),
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.password,
                                  color:Color(0xffFE2550),
                                ),
                                fillColor: Colors.white70),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          onPressed: ()async {
signIntoApp();
           Navigator.pushReplacement<void,void>(context,
                        MaterialPageRoute<void>(builder: (context) => bottomNhome()));

                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
      decoration: BoxDecoration(
        color: Color(0xffFE2550),
        borderRadius: BorderRadius.circular(5),
      ),
                            child: Container(
                              constraints:
                                  BoxConstraints(maxWidth: 250, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("______________OR _____________"),
                         SizedBox(height: 10,),
                                           Ink(
                            decoration: BoxDecoration(
        color: Color(0xffFE2550),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              constraints:
                                  BoxConstraints(maxWidth: 250, minHeight: 50.0),
                              alignment: Alignment.center,

                              child: Text(
                                "Login With Google",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      SizedBox(height: 10,), 
                                              Text("Create Account"),
]  )
                      
                    ),
                  ),
                
              ),
            );
          
        
  }
}

