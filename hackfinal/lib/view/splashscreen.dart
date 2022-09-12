import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackfinal/view/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      body: Column(
        children: [
          

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 11, 26, 13),
                image: DecorationImage(
                    image: AssetImage("assests/splash.PNG"),
                    fit: BoxFit.cover)),
            height: 500,
            width: MediaQuery.of(context).size.width,
          ),  
           
              SizedBox(height: 10,),
              Text(
                        "Perangkat Lunak Pengolah Gambar Vektor",
                        style: TextStyle(
                            fontSize: 26,
                            color: Color.fromARGB(255, 61, 66, 61),
                            fontWeight: FontWeight.w700),
                            maxLines: 2,
                            
                      ),
                        SizedBox(height: 10,),
                       Text(
                        "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 53, 59, 53),
                            fontWeight:FontWeight.w400),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height:48,
                        width: 390,
                        
                        child: ElevatedButton(                   
                    onPressed: ( ) {
                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Login()),
  );
                    },
                    style: ElevatedButton.styleFrom(
                       backgroundColor: Color.fromARGB(0, 3, 25, 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: Text(
                      "MASUK",
                      style:
                          TextStyle(
                             fontSize: 20,
                            color: Colors.white,
                            fontWeight:FontWeight.w400),
                          ),
                          
                    ),
                  ),      
              
              
        ],
      ),
    );
  }
}
