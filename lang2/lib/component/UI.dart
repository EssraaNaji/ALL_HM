import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Color? color;
  String? text;
  Function()? tap;

  Category({
    required this.text,
    required this.color,
    required this.tap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 60,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        color: color,
        child: Text(text!, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
