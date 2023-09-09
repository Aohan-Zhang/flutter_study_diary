import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class SimplePiano extends StatelessWidget {
  const SimplePiano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      context: context,
      content: TextButton(
        onPressed: () {
          // final player = AudioCache();
          // player.play('piano1.mp3');
        },
        child: const Text("click"),
      ),
    );
  }
}
