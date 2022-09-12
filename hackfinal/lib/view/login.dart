import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackfinal/view/bottomnavigation/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();

  signIntoApp() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
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
    return Scaffold(
      body: Center(
        child: Expanded(
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Selamat Datang!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 44,
                      color: Color.fromARGB(255, 61, 66, 61),
                      fontWeight: FontWeight.w700),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Masukan NISN dan password untuk memulai belajar sekarang",
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 53, 59, 53),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Lupa password",
                  textAlign: TextAlign.left,
                ),
                Container(
                  height: 50,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextField(
                    controller: emailcon,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                          //fontWeight: FontWeight.w700,
                          wordSpacing: 0.3,
                        ),
                        hintText: 'Nomor NISM',
                        prefixIcon: Icon(
                          Icons.person,
                          //   color: Color(0xffFE2550),
                        ),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  textAlign: TextAlign.left,
                ),
                Container(
                  height: 50,
                  width: 390,
                  child: TextField(
                    controller: passwordcon,
                    obscureText: true,
                    /* ... */
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 18,
                          //fontWeight: FontWeight.w700,
                          wordSpacing: 0.3,
                        ),
                        hintText: 'Masukkan Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0x004A61),
                        ),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Lupa password"),
                SizedBox(
                  height: 48,
                  width: 390,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home() ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(0, 3, 25, 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      "MULAI BELAJAR",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
