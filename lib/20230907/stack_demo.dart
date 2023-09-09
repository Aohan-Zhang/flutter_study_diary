import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: "stack demo",
      context: context,
      content: const Stack(
        children: [
          Image(
            image: NetworkImage(
              "https://t7.baidu.com/it/u=1595072465,3644073269&fm=193&f=GIF",
            ),
          ),
          Positioned(
            top: 200,
            right: 50,
            child: Text(
              "@图片水印",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
