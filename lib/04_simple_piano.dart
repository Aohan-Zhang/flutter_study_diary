import 'package:flutter/material.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              // final player = AudioCache();
              // player.play('piano1.mp3');
            },
            child: const Text("click"),
          ),
        ),
      ),
    );
  }
}
