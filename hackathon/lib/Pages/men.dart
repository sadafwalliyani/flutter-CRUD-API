import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:practiceoftest/Widgets/buttonwidget.dart';
import 'package:practiceoftest/Widgets/productinfo.dart';
import 'package:practiceoftest/Widgets/textContent.dart';
import 'package:practiceoftest/productScreens/measurement.dart';


class men extends StatefulWidget {
  const men({Key? key}) : super(key: key);

  @override
  State<men> createState() => _menState();
}

class _menState extends State<men> {
  CollectionReference data = FirebaseFirestore.instance.collection('data');
  Future<void> deleteUser(docId) {
    return data
        .doc(docId)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  @override
  Widget build(BuildContext context) {

//     return Scaffold(
//       body: 
      
//       Center(
//         child: FutureBuilder<QuerySnapshot>(
//           future: data.get(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView(
//                   children:
//                       snapshot.data!.docs.map((DocumentSnapshot document) {
//                 Map<String, dynamic> abc =
//                     document.data()! as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text(abc['productsList'].toString()),
                
//                   // trailing: 
//                   // IconButton(
//                   //   onPressed: () {
//                   //     setState(() {
//                   //       deleteUser(document.id);
//                   //     });
//                   //   },
//                   //   icon: Icon(Icons.delete),
//                   // ),
//                 );
//               }).toList());
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  ProductWidget('assests/oval7.png', "Sandy Willams",
                      "Freelance Tailor "),
                  SizedBox(
                    height: 5,
                  ),
                  txtwidget(),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: 
                            ClipRRect(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => measurement()));
                            },
                            child:  Image.asset(
                              'assests/screen4.png',
                              height: 300,
                              width: 200,
                            ),)
                            )
                           
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assests/1.png',
                                height: 200,
                                width: 100,
                              ),
                              Image.asset(
                                'assests/2.png',
                                height: 200,
                                width: 100,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assests/3.png',
                                height: 200,
                                width: 100,
                              ),
                              Image.asset(
                                'assests/Bitmap.png',
                                height: 200,
                                width: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  buttonwidget(),
                  SizedBox(
                    height: 1,
                  ),
                  ProductWidget('assests/oval8.png', "Alero Samuel",
                      "Designer at toki designs"),
                  SizedBox(
                    height: 5,
                  ),
                  txtwidget(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
