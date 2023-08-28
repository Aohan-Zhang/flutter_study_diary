import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class LayoutBasic extends StatelessWidget {
  const LayoutBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DiaryLayout(
      context: context,
      content: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: const Text("container1"),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: const Text("container2"),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Text("container3"),
          ),
        ],
      ),
    );
  }
}
