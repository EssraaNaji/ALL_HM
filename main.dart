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
  List<Color> cont = [Colors.blue, Colors.pink, Colors.brown];
  int i = 0;
  String party = "even";
  int counter = 1;
  bool size = true;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [cont[i], Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
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
                    color: cont[i],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text(
                  "Counter Value",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: cont[i],
                  ),
                ),
                Text(
                  "$counter",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: cont[i],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        if (i < cont.length) i++;
                        if (i == cont.length) i = 0;
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
          backgroundColor: cont[i],
        ),
      ),
    );
  }
}
