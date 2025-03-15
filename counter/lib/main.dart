import 'dart:math';

import 'package:counter/wieght.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  List<Color> colors = [
    Colors.blue,
    const Color.fromARGB(255, 79, 50, 60),
    const Color.fromARGB(255, 182, 105, 196),
    const Color.fromARGB(255, 36, 92, 38),
    Colors.teal,
  ];
  Color color = Colors.deepPurpleAccent;
  int pointer = 0;
  // String party = "even";
  int counter = 1;
  bool size = true;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colors[pointer].withOpacity(0.9), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 190,
                  child:
                      counter % 2 == 0
                          ? Text(
                            "even : $counter",
                            style: TextStyle(
                              fontSize: size ? 20 : 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                          : Text(
                            "odd : $counter",
                            style: TextStyle(
                              fontSize: size ? 20 : 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                  decoration: BoxDecoration(
                    color: colors[pointer],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  "Counter Value",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: colors[pointer],
                  ),
                ),
                Text(
                  "$counter",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colors[pointer],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (pointer < colors.length) pointer++;
                        if (pointer == colors.length) pointer = 0;
                        setState(() {});
                      },
                      icon: Icon(Icons.color_lens),
                      label: Text("change color"),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        size = !size;
                        setState(() {});
                      },
                      icon: Icon(Icons.sanitizer_outlined),
                      label: Text("change size"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            counter++;
            setState(() {});
          },
          icon: Icon(Icons.add, color: Colors.white),
          label: Text("increment", style: TextStyle(color: Colors.white)),
          backgroundColor: colors[pointer],
        ),
      ),
    );
  }
}
