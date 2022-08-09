import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practiceoftest/Widgets/cartwidget.dart';
import 'package:practiceoftest/Widgets/paynowbutton.dart';
import 'package:practiceoftest/bottomnavigation/bnbar.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
   return
   Scaffold(
  appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 207, 205, 205),
  title: Text("Cart",
                   style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
               ),
),
  leading: GestureDetector(
    onTap: () {  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => bottomNhome())); },
    child: ImageIcon(AssetImage('assests/backarrow.png',),),    
    
  ),
),
    
    body: SingleChildScrollView(
      child: Column(
        
        
        children: [
          cartwidget('assests/screen4.png'),
           SizedBox(height: 5,),
        cartwidget('assests/Rectangle 3.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 4.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 5.png'),
        SizedBox(height: 5,),
        cartwidget('assests/Rectangle 6.png'),
        SizedBox(height: 5,),
        paynowwidget(),
      ],),
    )
   );
  }
}