import 'package:app_1/models/Number.dart';
import 'package:app_1/screens/Categorys/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<data_ui> numbers = const [
    data_ui(
        Image: "assets/images/numbers/number_one.png",
        enName: 'one',
        jpName: 'ichi',
        sound: 'number_one_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_two.png",
        enName: 'two',
        jpName: 'Ni',
        sound: 'number_two_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_three.png",
        enName: 'three',
        jpName: 'San',
        sound: 'number_three_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_four.png",
        enName: 'four',
        jpName: 'Shi',
        sound: 'number_four_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_five.png",
        enName: 'five',
        jpName: 'Go',
        sound: 'number_five_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_six.png",
        enName: 'six',
        jpName: 'Roku',
        sound: 'number_six_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_seven.png",
        enName: 'seven',
        jpName: 'Sebun',
        sound: 'number_seven_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_eight.png",
        enName: 'eight',
        jpName: 'Hachi',
        sound: 'number_eight_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_nine.png",
        enName: 'nine',
        jpName: 'Kyū',
        sound: 'number_nine_sound.mp3'),
    data_ui(
        Image: "assets/images/numbers/number_ten.png",
        enName: 'ten',
        jpName: 'Jū',
        sound: 'anumber_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return Item(
            num_ui: numbers[num],
            color: Color(0xffEF9235),
            filename: 'numbers',
          );
        },
      ),
    );
  }

  // List<Widget> getlist(List<Number> numbers) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(number: numbers[i]));
  //   }
  //   return itemList;
  // }
}
