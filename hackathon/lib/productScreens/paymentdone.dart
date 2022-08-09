import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/graytxtwiget.dart';
import 'package:practiceoftest/Widgets/pinkbutton.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/bottomnavigation/bnbar.dart';

class paymentdone extends StatefulWidget {
  const paymentdone({Key? key}) : super(key: key);

  @override
  State<paymentdone> createState() => _paymentdoneState();
}

class _paymentdoneState extends State<paymentdone> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
            SizedBox(height: 100,),
          Image(image: AssetImage('assests/paymentdone.png')
        
         ),
          SizedBox(height: 50,),
      Text("Payment Successful",
                   style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
               ),
),
             SizedBox(height: 10,),
             Text("Your order will be ready in 5 days, including shipping, more details and options for tracking will be sent to your email",

              textAlign: TextAlign.center,
    maxLines: 3,
    style: GoogleFonts.raleway(
      color: Colors.black,
      fontSize: 15,
    
      fontWeight: FontWeight.bold,)),
         SizedBox(height: 50,),
         graytxt("Thanks!!!"),
         SizedBox(height: 50,),
        // pinkbtn("Continue Shopping",250,),
        RaisedButton(
    onPressed: () {
       Navigator.pushReplacement<void,void>(context,
                    MaterialPageRoute<void>(builder: (context) => bottomNhome()));
    },
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
    padding: EdgeInsets.all(0.0),
    child: Ink(
      decoration: BoxDecoration(
        color: Color(0xffFE2550),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth:200, maxHeight: 50),
        alignment: Alignment.center,
        child: Text(
          "Continue Shopping",
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
        ],),
      ),

    );
  }
}