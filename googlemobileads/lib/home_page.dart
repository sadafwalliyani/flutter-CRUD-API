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
  final BannerAd myBanner = BannerAd(
    adUnitId: '<ad unit ID>',
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  );
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
