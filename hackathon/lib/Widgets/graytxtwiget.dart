import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget graytxt(txt){
  return   
              Text(txt,
              style: GoogleFonts.raleway(
                        color: Color.fromARGB(255, 85, 80, 82),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),);
}