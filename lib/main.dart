import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List names = [
      {"name": "Noman", "id": "2k18"},
      {"name": "Maaz", "id": "2k19"},
      {"name": "Ahtisham", "id": "2k20"},
      {"name": "Usman", "id": "2k21"},
      {"name": "Hamid", "id": "2k22"},
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "List Builder",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.grey,
              padding: EdgeInsets.all(20),
              height: 100,
              width: double.infinity,
              child: Card(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        names[index]["name"],
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        names[index]["id"],
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                key: UniqueKey(),
                color: Color.fromARGB(166, 87, 165, 228),
                elevation: 20,
                shadowColor: Colors.blue,
              ),
            );
          }),
    ));
  }
}
