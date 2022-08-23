import 'package:app_1/screens/Colors_Page.dart';
import 'package:app_1/screens/Family_Member_Page.dart';
import 'package:app_1/screens/Phrases_Page.dart';
import 'package:app_1/screens/numbers_page.dart';
import 'package:flutter/material.dart';
import 'Categorys/Category_iteam.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 226, 175),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Number',
            color: Color.fromARGB(255, 248, 139, 30),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Family_Member_Page();
              }));
            },
            text: 'Family Member',
            color: Color.fromARGB(255, 21, 207, 52),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Colors_Page();
              }));
            },
            text: 'Colors',
            color: Color.fromARGB(255, 161, 11, 136),
          ),
          Category(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Phrases_Page();
              }));
            },
            text: 'Phrases',
            color: Color.fromARGB(249, 19, 166, 235),
          ),
        ],
      ),
    );
  }
}
