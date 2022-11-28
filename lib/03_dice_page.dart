import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left = 1;
  var right = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text("dice page"),
          backgroundColor: Colors.teal.shade900,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                left = Random().nextInt(6) + 1;
                              });
                            },
                            child: Image.asset("images/dice/dice$left.png")),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                right = Random().nextInt(6) + 1;
                              });
                            },
                            child: Image.asset("images/dice/dice$right.png")),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.teal[900],
                      onPressed: () {
                        setState(() {
                          left = Random().nextInt(6) + 1;
                          right = Random().nextInt(6) + 1;
                        });
                      },
                      child: const Icon(Icons.refresh),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
