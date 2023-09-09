import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      title: "card demo",
      context: context,
      content: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(30),
            color: Colors.teal,
            elevation: 10,
            shadowColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.pinkAccent, width: 3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Column(
              children: [
                ListTile(
                  leading:
                      Icon(Icons.supervised_user_circle_outlined, size: 50),
                  title: Text("张三"),
                  subtitle: Text("董事长"),
                ),
                ListTile(
                  title: Text("电话: 13333333333"),
                ),
                ListTile(
                  title: Text("地址: xxxxxxxxx"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
