    import 'package:flutter/material.dart';

chatWidget(name,) {
  return Container(
    margin: EdgeInsets.only(bottom: 1),
    child: ListTile(
      tileColor: Colors.white,
     
      title: Text(name),
     
    ),
  );
}