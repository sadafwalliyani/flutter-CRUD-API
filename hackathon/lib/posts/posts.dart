import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class posts extends StatefulWidget {
  const posts({Key? key}) : super(key: key);

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  TextEditingController titleController = TextEditingController();
   TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        body:Container(
          child: Column(children: [
            TextField(
             controller: titleController,
             decoration: InputDecoration(
               labelText:("Enter Product Name"),
             ),
            ),
             TextField(
             controller: descriptionController,
             decoration: InputDecoration(
               labelText:("Enter Description"),
             ),
            ),
          ],),
        )
      )
    );
  }
}
