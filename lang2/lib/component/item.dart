import 'package:flutter/material.dart';

import 'package:lang2/models/sample.dart';
import 'package:audioplayers/audioplayers.dart';

////Number Items
class Item extends StatelessWidget {
  @override
  const Item(this.mysample, {super.key});
  final sample mysample;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Row(
        children: [
          mysample.image == null
              ? SizedBox()
              : SizedBox(height: 50, width: 50, child: mysample.image),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        mysample.name,
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      // Text("Hi esra"   ,style: TextStyle(fontSize: 40 , color:  Colors.black),),
                      Text(
                        mysample.jpname,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  IconButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource(mysample.sound));
                    },
                    icon: Icon(Icons.play_arrow, color: Colors.white),
                    splashColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
