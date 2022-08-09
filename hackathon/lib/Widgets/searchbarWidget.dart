// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// Widget searchbarWidget(searchbar) {
//   return (Container(
//      width: 300,
     
//       // color: Color.fromARGB(255, 254, 254, 255),
//       child: TextField(
//         decoration: InputDecoration(
          
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
//             filled: true,
//             hintStyle: TextStyle(color: Color.fromARGB(255, 223, 215, 215),fontFamily: 'Play',fontSize: 12,
//             fontWeight: FontWeight.w700,wordSpacing: 0.3,),
//             hintText:"Search",
//             prefixIcon: Icon(Icons.search),
//             fillColor: Colors.white),
//       )));
// }
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<String> allTodos=[];

  TextEditingController names=TextEditingController();
  TextEditingController updatenames=TextEditingController();
  addValue(){
    setState(() {
      allTodos.add(names.text);
      names.clear();
    });
  }

  deleteValue(index){
    setState(() {
      allTodos.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(
      width: MediaQuery.of(context).size.width*0.7,
      child: TextField(
        controller: names,
      ),
    ),
    Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: ElevatedButton(onPressed: (){
        addValue();

      }, child: Text("Add Todo")
      ),
    ),
    Expanded(child: 
    
   //ListView.builder(
      ListView.separated(
	separatorBuilder: (BuildContext context, int index) {
		return SizedBox(
				height: 5,
                );
		},
        
      itemCount: allTodos.length,
      itemBuilder: ((context,index){
return ListTile(


  tileColor: Colors.grey,

  title: Text(allTodos[index],)
  ,

  trailing: SizedBox(

    width: MediaQuery.of(context).size.width*0.7,

    child: 

    Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [

IconButton(onPressed: (){

  showDialog(context: context,

   builder: (context){

    return AlertDialog(

      title:  Text("Edit Todo"),

      content: TextField(controller: updatenames,),

    actions: [

      ElevatedButton(onPressed: (){

        Navigator.of(context).pop();

        setState((){

          allTodos.replaceRange(index,index+1,{updatenames.text});

          updatenames.clear();

        }

        );

      }, child: Text("Edit"))

    ],

    );

    

   });

}, icon: Icon(Icons.edit),),

IconButton(onPressed: (){

  deleteValue(index);

}, icon: Icon(Icons.delete))



    ]),

  ),

);
    }))
)],
),
    );
  }
}