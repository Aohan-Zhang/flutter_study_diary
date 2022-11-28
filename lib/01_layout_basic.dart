import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        Container,
        Key,
        MaterialApp,
        SafeArea,
        Scaffold,
        StatelessWidget,
        Text,
        Widget;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // safe area
        body: SafeArea(
          child: Column(
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
        ),
      ),
    );
  }
}
