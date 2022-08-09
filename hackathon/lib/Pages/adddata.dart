import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class adddata extends StatefulWidget {
  const adddata({Key? key}) : super(key: key);

  @override
  State<adddata> createState() => _adddataState();
}

class _adddataState extends State<adddata> {

var data =FirebaseFirestore.instance.collection('data');
Future<void> addProducts() {
// Call the Product's CollectionReference to add a new Product
return 
data.doc().set({
  

'Names of Products': "Agbada",

//["Agbada","Ankara","T-Shirt","Danshiki"], // John Doe


})
.then((value) => print("Product Added"))
.catchError((error) => print("Failed to add Product: $error"));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          addProducts();

        }, child: Text("Add"))
        
      )
    );
  }
}