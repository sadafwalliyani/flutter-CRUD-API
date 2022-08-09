import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practiceoftest/login.dart';

class registration extends StatefulWidget {
  // const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  signUpFunction() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
            child: Expanded(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
               child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                        height: 150,
                        width: 150,
                        child: Image(
                          image: AssetImage(
                            'assests/Vector2.png',
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: TextField(
                        controller: namecontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              wordSpacing: 0.3,
                            ),
                            hintText: "Write Your Name",
                            prefixIcon: Icon(
                              Icons.contact_mail,
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
                        controller: emailcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              wordSpacing: 0.3,
                            ),
                            hintText: "Write Your E-mail",
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
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18,
                              wordSpacing: 0.3,
                            ),
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.password,
                              color: Color(0xffFE2550),
                            ),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      onPressed: () async {
                        signUpFunction();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Login()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [Color(0xffFE2550), Color(0xff000000)],
        // begin: Alignment.centerLeft,
        //end: Alignment.centerRight,
        color: Color(0xffFE2550),
        borderRadius: BorderRadius.circular(5),
      ),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 200, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Register",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        )));
  }
}
