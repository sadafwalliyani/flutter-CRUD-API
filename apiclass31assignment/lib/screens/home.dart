import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practiceoftest/services/user_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getUsers(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return 
                  ListTile(
                    title: InkWell(
                      child: Text(snapshot.data[index].name),
                      onTap: () {
                        showDialog(                                                  
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text("User Information"),
                            content: Column(
                              children: [
                                Text(snapshot.data[index].id.toString()),
                                Text(snapshot.data[index].name),
                                Text(snapshot.data[index].username),
                                Text(snapshot.data[index].email),
                                 Text(snapshot.data[index].address.zipcode),
                                Text(snapshot.data[index].phone),
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  color: Color.fromARGB(255, 10, 10, 10),
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("Go Back"),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
