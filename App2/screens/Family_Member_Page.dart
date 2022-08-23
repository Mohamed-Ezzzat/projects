import 'package:app_1/models/Number.dart';
import 'package:app_1/screens/Categorys/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Family_Member_Page extends StatelessWidget {
  const Family_Member_Page({Key? key}) : super(key: key);

  final List<data_ui> members = const [
    data_ui(
        Image: "assets/images/family_members/family_father.png",
        enName: 'father',
        jpName: 'Chichioya',
        sound: 'father.wav'),
    data_ui(
        Image: "assets/images/family_members/family_mother.png",
        enName: 'mother',
        jpName: 'Hahaoya',
        sound: 'mother.wav'),
    data_ui(
        Image: "assets/images/family_members/family_daughter.png",
        enName: 'daughter',
        jpName: 'Musume',
        sound: 'daughter.wav'),
    data_ui(
        Image: "assets/images/family_members/family_son.png",
        enName: 'son',
        jpName: 'Musuko',
        sound: 'son.wav'),
    data_ui(
        Image: "assets/images/family_members/family_older_brother.png",
        enName: 'older brother',
        jpName: 'Nīsan',
        sound: 'older bother.wav'),
    data_ui(
        Image: "assets/images/family_members/family_older_sister.png",
        enName: 'older sister',
        jpName: 'Onēsan',
        sound: 'older sister.wav'),
    data_ui(
        Image: "assets/images/family_members/family_grandfather.png",
        enName: 'grand father',
        jpName: 'Ojīsan',
        sound: 'grand father.wav'),
    data_ui(
        Image: "assets/images/family_members/family_grandmother.png",
        enName: 'grand mother',
        jpName: 'Sobo',
        sound: 'grand mother.wav'),
    data_ui(
        Image: "assets/images/family_members/family_younger_sister.png",
        enName: 'younger sister',
        jpName: 'Onēsan',
        sound: 'younger sister.wav'),
    data_ui(
        Image: "assets/images/family_members/family_younger_brother.png",
        enName: 'younger brother',
        jpName: 'Onēsan',
        sound: 'younger brohter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Member'),
        backgroundColor: Color.fromARGB(255, 61, 40, 34),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, num) {
          return Item(
            num_ui: members[num],
            color: Color.fromARGB(255, 6, 190, 31),
            filename: 'family_members',
          );
        },
      ),
    );
  }
}
