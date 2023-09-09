import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({super.key});

  List<Widget> _weiGuo() {
    return ["曹操", "郭嘉", "司马懿", "曹仁", "曹洪", "曹植", "许褚"]
        .map((e) => _weiChip(e))
        .toList();
  }

  List<Widget> _shuGuo() {
    return ["刘备", "诸葛亮", "关羽", "张飞", "马超", "黄忠"]
        .map((e) => _shuChip(e))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      context: context,
      content: Column(children: [
        const Spacer(),
        Wrap(
          children: _weiGuo(),
          // 水平方向空隙
          spacing: 18,
          // 竖直方向空隙
          runSpacing: 10,
        ),
        const Spacer(),
        Wrap(children: _shuGuo()),
        const Spacer(),
      ]),
    );
  }

  Chip _shuChip(String label) {
    return _getChip(label: label, country: "蜀", avatarColor: Colors.blueAccent);
  }

  Chip _weiChip(String label) {
    return _getChip(label: label, country: "魏", avatarColor: Colors.redAccent);
  }

  Chip _getChip(
      {required String label,
      required String country,
      required Color avatarColor}) {
    return Chip(
        label: Text(label),
        avatar: CircleAvatar(
          backgroundColor: avatarColor,
          child: Text(country),
        ));
  }
}
