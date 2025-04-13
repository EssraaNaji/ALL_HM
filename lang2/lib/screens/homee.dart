import 'package:flutter/material.dart';

import '../F_page.dart';
import '../Nambers.dart';
import '../component/UI.dart';
import '../phrases.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toku"), backgroundColor: Color(0xFF6B4226)),
      body: Column(
        children: [
          Expanded(
            child: Category(
              text: "Numbers",
              color: Colors.orange,
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Nambers();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              text: "FamilyMember",
              color: Colors.green,
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Familys();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Category(
              text: "Colors",
              color: Colors.deepPurpleAccent,
              tap: () {},
            ),
          ),

          Expanded(
            child: Category(
              text: "Phases",
              color: Colors.blue,
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return phrases();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
