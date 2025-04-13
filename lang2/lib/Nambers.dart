// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:lang2/component/item.dart';

import 'models/sample.dart';

class Nambers extends StatelessWidget {
  List<sample> list = [
    sample(
      name: "one",
      jpname: "1",
      image: Image(image: AssetImage("images/numbers/number_one.png")),
      sound: "assets/sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "one",
      jpname: "1",
      image: Image(image: AssetImage("images/numbers/number_one.png")),
      sound: "assets/sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "one",
      jpname: "1",
      image: Image(image: AssetImage("images/numbers/number_one.png")),
      sound: "assets/sounds/numbers/number_one_sound.mp3",
    ),
  ];

  Nambers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numbers")),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, int index) {
          return Item(list[index]);
        },
      ),
    );
  }
}
