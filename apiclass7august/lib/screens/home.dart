import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practiceoftest/services/user_service.dart';

import '../model/user_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
          onPressed: () async {
            await postData(
                Data(name: "sadaf", email: "absd", username: "dvsjcskjcb"));
          },
          child: Text("Add Data"),
        ),
      ),
      body: FutureBuilder(
          future: getUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data.data[index].name),
                    subtitle: Text("${snapshot.data.data[index].id}"),
                    trailing: Wrap(children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              updateData(
                                  model: Data(
                                      name: "Sadaf Mansoor Updated ",
                                      email: "Sadaf04 Updated email",
                                      username: "SadafW Updated username",
                                      phone:" 03333334",
                                      website: "dnkdfndjdnf",
                                      ),
                                  id: snapshot.data.data[index].id);
                            });
                          },
                          icon: const Text("update")),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              deleteData(id: snapshot.data.data[index].id);
                            });
                          },
                          icon: Text("Delete"))
                    ]),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    
    );
  }
}
