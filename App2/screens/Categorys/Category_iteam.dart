import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color, this.ontap});

  String? text;
  Color? color;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        height: 70,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            text!,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
