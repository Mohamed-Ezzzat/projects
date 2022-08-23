import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../models/Number.dart';
import 'Categorys/item.dart';

class Phrases_Page extends StatelessWidget {
  const Phrases_Page({Key? key}) : super(key: key);

  final List<data_ui> phrases = const [
    data_ui(
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        sound: 'dont_forget_to_subscribe.wav'),
    data_ui(
        enName: 'i love programming',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        sound: 'i_love_programming.wav'),
    data_ui(
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu',
        sound: 'programming_is_easy.wav'),
    data_ui(
        enName: 'where are you going',
        jpName: 'Doko ni iku no',
        sound: 'where_are_you_going.wav'),
    data_ui(
        enName: 'whar is your name ?',
        jpName: 'Namae wa nani?',
        sound: 'what_is_your_name.wav'),
    data_ui(
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu',
        sound: 'i_love_anime.wav'),
    data_ui(
        enName: 'how are you feeling',
        jpName: 'Go kibun wa ikagadesu ka.',
        sound: 'how_are_you_feeling.wav'),
    data_ui(
        enName: 'are you coming',
        jpName: 'Kimasu ka',
        sound: 'are_you_coming.wav'),
    data_ui(
        enName: 'yes im coming',
        jpName: 'Hai, kimasu',
        sound: 'yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, num) {
          return Item2(
            phras_ui: phrases[num],
            color: Color.fromARGB(255, 13, 136, 236),
            filename: 'phrases',
          );
        },
      ),
    );
  }
}
