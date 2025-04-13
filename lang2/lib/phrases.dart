import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lang2/component/item.dart';
import 'package:lang2/models/sample.dart';

class phrases extends StatelessWidget {
  @override
  List<sample> list2 = [
    sample(
      name: "one",
      jpname: "1",
      // image:  Image(image: AssetImage("images/numbers/number_one.png")),
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "one",
      jpname: "1",

      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "one",
      jpname: "1",

      sound: "sounds/numbers/number_one_sound.mp3",
    ),
  ];

  phrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list2.length,
        itemBuilder: (BuildContext context, index) {
          return Item(list2[index]);
        },
      ),
    );
  }
}
