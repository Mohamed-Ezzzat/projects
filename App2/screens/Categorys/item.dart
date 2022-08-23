import 'package:app_1/models/Number.dart';
import 'package:app_1/models/phrases_model.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.num_ui,
    required this.color,
    required this.filename,
  }) : super(key: key);
  final data_ui num_ui;
  final Color color;

  final String filename;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 85,
      child: Row(children: [
        Container(
          color: Color(0xffFFF6DC),
          child: Image.asset(num_ui.Image!),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                num_ui.jpName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(num_ui.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'assets/sounds/$filename/');
            player.play(num_ui.sound);
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
      ]),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({
    Key? key,
    required this.phras_ui,
    required this.color,
    required this.filename,
  }) : super(key: key);
  final phrases_ui phras_ui;
  final Color color;

  final String filename;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 85,
      child: Row(children: [
        Container(
          color: Color(0xffFFF6DC),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phras_ui.jpName,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(phras_ui.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            AudioCache player = AudioCache(prefix: 'assets/sounds/$filename/');
            player.play(phras_ui.sound);
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ),
      ]),
    );
  }
}
