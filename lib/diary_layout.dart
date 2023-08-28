import 'package:flutter/material.dart';

class DiaryLayout extends StatelessWidget {
  final BuildContext context;
  final Widget content;
  final bool showBack;

  const DiaryLayout(
      {super.key,
      required this.context,
      required this.content,
      this.showBack = true});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(context.widget.runtimeType.toString()),
          leading: showBack
              ? IconButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  icon: const Icon(Icons.arrow_back),
                )
              : null,
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: content,
        ),
      ),
    );
  }
}
