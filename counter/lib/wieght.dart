import 'package:counter/wieght.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  List<Color> back = [
    Colors.deepOrange,
    Colors.deepPurpleAccent,
    Colors.lightBlueAccent,
  ];
  List<Color> cont = [Colors.blue, Colors.pink, Colors.brown];
  int i = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: back[i],
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [back[i], Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Text("number"),
                  height: 200,
                  width: 200,
                  color: cont[i],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (i < back.length) i++;
                  if (i == back.length - 1) i = 0;
                  setState(() {});
                },
                child: Text("change colors"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
