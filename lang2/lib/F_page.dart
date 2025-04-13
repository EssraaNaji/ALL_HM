import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lang2/component/item.dart';

import 'models/sample.dart';

// ignore: must_be_immutable
class Familys extends StatelessWidget {
  List<sample> list2 = [
    sample(
      name: "father",
      jpname: "baba",
      image: Image(
        image: AssetImage("images/family_members/family_daughter.png"),
      ),
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "father",
      jpname: "baba",
      image: Image(
        image: AssetImage("images/family_members/family_daughter.png"),
      ),
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    sample(
      name: "father",
      jpname: "baba",
      image: Image(
        image: AssetImage("images/family_members/family_daughter.png"),
      ),
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
  ];

  Familys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Family")),
      body: ListView.builder(
        itemCount: list2.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(list2[index]);
        },
      ),
    );
  }
}
