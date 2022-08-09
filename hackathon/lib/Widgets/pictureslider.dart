// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// class picturesslider extends StatelessWidget {
//   CarouselController buttonCarouselController = CarouselController();
//   // const picturesslider({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) 
//     => Column(
//     children: <Widget>[
//       CarouselSlider(
//         items: child,
//         carouselController: buttonCarouselController,
//         options: CarouselOptions(
//           autoPlay: false,
//           enlargeCenterPage: true,
//           viewportFraction: 0.9,
//           aspectRatio: 2.0,
//           initialPage: 2,
//         ),
//       ),
//       RaisedButton(
//         onPressed: () => buttonCarouselController.nextPage(
//             duration: Duration(milliseconds: 300), curve: Curves.linear),
//         child: Text('→'),
//       )
//     ]
//   );
    
    
//   }


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pictureslider extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  
  get child => null;

 @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: child,
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
      RaisedButton(
        onPressed: () => buttonCarouselController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.linear),
        child: Text('→'),
      )
    ]
  );
}
