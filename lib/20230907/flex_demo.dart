import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

/// flex stu demo
class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DiaryLayout(
      title: "flex demo",
      context: context,
      content: Column(
        children: [
          Row(children: [
            Container(
              color: Colors.lightGreen,
              width: 100,
              height: 50,
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                width: 100,
                height: 50,
              ),
            ),
          ]),
          const Flex(
            direction: Axis.horizontal,
            // 空格环绕效果
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // 左右排列顺序
            textDirection: TextDirection.rtl,
            children: [
              Icon(Icons.add_box, size: 50),
              Icon(Icons.add_alarm, size: 50),
              Icon(Icons.add_task_sharp, size: 50),
              Icon(Icons.add_call, size: 50),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Container(
                  color: Colors.tealAccent,
                  height: 50,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.blueAccent,
                  height: 50,
                ),
                flex: 1,
              ),
            ],
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(50),
            child: Flex(
              direction: Axis.vertical,
              // 竖向排列顺序
              verticalDirection: VerticalDirection.up,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.tealAccent,
                    height: 50,
                  ),
                  flex: 2,
                ),
                const Spacer(flex: 1),
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                    height: 50,
                  ),
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
