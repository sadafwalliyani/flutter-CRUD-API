import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
//  BannerAd? _bannerAd;

//   @override
//   void initState() {
//     super.initState();
//     _bannerAd = BannerAd(
//       adUnitId: BannerAd.testAdUnitId,
//       request: AdRequest(),
//       size: AdSize.banner,
//       listener: BannerAdListener(
//         onAdLoaded: (Ad ad) {
//           print('$BannerAd loaded.');
//         },
//         onAdFailedToLoad: (Ad ad, LoadAdError error) {
//           print('$BannerAd failedToLoad: $error');
//         },
//         onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
//         onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
//       ),
//     );

//     _bannerAd?.load();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _bannerAd?.dispose();
//     _bannerAd = null;
//   }
  int _counter = 0;
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  void _increamentCounter() {
    @override
    void initState() {
      super.initState();
      _initBannerAd();
    }
  }

  _initBannerAd() {
    _bannerAd = BannerAd;
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('widget.title'),
    ),
    body: Center(
      child: Column(
        children: [
          Text('You have pushed the button this many times:'),
          Text(''),
          FloatingActionButton(
            onPressed: _increamentCounter,
            tooltip: 'Increament',
            child: Icon(Icons.add),
          )
        ],
      ),
    ),
  );
}
