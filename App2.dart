// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  int reset = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Points counter',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontFamily: 'pacifico'),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: const Text(
                          'Team A',
                          style: TextStyle(
                              backgroundColor: Colors.white,
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '$teamApoint',
                        style: const TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                            fontSize: 150),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamApoint++;
                          setState(() {});
                          // print(teamApoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamApoint += 2;
                          setState(() {});
                          // print(teamApoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamApoint += 3;
                          setState(() {});
                          // print(teamApoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 40,
                    endIndent: 20,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: const Text(
                          'Team B',
                          style: TextStyle(
                              backgroundColor: Colors.white,
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '$teamBpoint',
                        style: const TextStyle(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                            fontSize: 150),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamBpoint++;
                          setState(() {});
                          // print(teamBpoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamBpoint += 2;
                          setState(() {});
                          // print(teamBpoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          teamBpoint += 3;
                          setState(() {});
                          // print(teamBpoint);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamApoint = 0;
                    teamBpoint = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
