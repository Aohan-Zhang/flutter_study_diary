import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DiaryLayout extends StatelessWidget {
  final BuildContext context;
  final Widget content;
  final bool showBack;
  final String title;

  const DiaryLayout(
      {super.key,
      required this.context,
      required this.content,
      this.title = "",
      this.showBack = true});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(context.widget.runtimeType.toString());
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              title.isEmpty ? context.widget.runtimeType.toString() : title),
          leading: showBack
              ? IconButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  icon: const Icon(Icons.arrow_back),
                )
              : null,
        ),
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: content,
        ),
      ),
    );
  }
}
