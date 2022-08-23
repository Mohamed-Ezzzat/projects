import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/Number.dart';
import 'Categorys/item.dart';

class Colors_Page extends StatelessWidget {
  const Colors_Page({Key? key}) : super(key: key);

  final List<data_ui> colors = const [
    data_ui(
        Image: "assets/images/colors/color_black.png",
        enName: 'black',
        jpName: 'Burakku',
        sound: 'black.wav'),
    data_ui(
        Image: "assets/images/colors/color_brown.png",
        enName: 'brown',
        jpName: 'Chairo',
        sound: 'brown.wav'),
    data_ui(
        Image: "assets/images/colors/color_dusty_yellow.png",
        enName: 'dusty yellow',
        jpName: 'Hokori ppoi kiiro',
        sound: 'dusty yellow.wav'),
    data_ui(
        Image: "assets/images/colors/color_gray.png",
        enName: 'gray',
        jpName: 'Gurē',
        sound: 'gray.wav'),
    data_ui(
        Image: "assets/images/colors/color_green.png",
        enName: 'green',
        jpName: 'Midori',
        sound: 'green.wav'),
    data_ui(
        Image: "assets/images/colors/color_red.png",
        enName: 'red',
        jpName: 'Aka',
        sound: 'red.wav'),
    data_ui(
        Image: "assets/images/colors/color_white.png",
        enName: 'white',
        jpName: 'Shiroi',
        sound: 'white.wav'),
    data_ui(
        Image: "assets/images/colors/yellow.png",
        enName: 'yellow',
        jpName: 'Kiiro',
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, num) {
          return Item(
            num_ui: colors[num],
            color: Color.fromARGB(235, 124, 5, 108),
            filename: 'colors',
          );
        },
      ),
    );
  }
}
