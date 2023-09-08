import 'package:flutter/material.dart';
import 'package:flutter_study_diary/20230907/flex_demo.dart';
import 'package:flutter_study_diary/20230907/stack_demo.dart';
import 'package:flutter_study_diary/20230907/wrap_demo.dart';
import 'package:flutter_study_diary/diary_layout.dart';
import 'package:flutter_study_diary/c03/dice_page.dart';
import 'package:flutter_study_diary/c01/layout_basic.dart';
import 'package:flutter_study_diary/c02/my_info_card.dart';
import 'package:flutter_study_diary/c05/questioner.dart';
import 'package:flutter_study_diary/c04/simple_piano.dart';

void main() {
  runApp(const MaterialApp(
    home: Catalogue(),
  ));
}

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return DiaryLayout(
      context: context,
      showBack: false,
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              diaryItem(
                time: "忘记时间了",
                content: [
                  catalogueItem(context: context, target: const LayoutBasic()),
                  catalogueItem(context: context, target: const MyInfoCard()),
                  catalogueItem(context: context, target: const DicePage()),
                  catalogueItem(context: context, target: const SimplePiano()),
                  catalogueItem(context: context, target: const Questioner()),
                ],
              ),
              diaryItem(
                time: "2023年09月07日23:25:30",
                content: [
                  catalogueItem(context: context, target: const FlexDemo()),
                  catalogueItem(context: context, target: const WrapDemo()),
                  catalogueItem(context: context, target: const StackDemo()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column diaryItem({required String time, required List<Widget> content}) {
    return Column(children: [
      Text(time),
      Wrap(
        spacing: 5,
        direction: Axis.horizontal,
        children: content,
      )
    ]);
  }

  ElevatedButton catalogueItem({
    required BuildContext context,
    required Widget target,
    String? title,
  }) {
    title ??= target.runtimeType.toString();
    return ElevatedButton(
      child: Text(title),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => target),
        )
      },
    );
  }
}
