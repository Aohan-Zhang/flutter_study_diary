import 'package:flutter/material.dart';
import 'package:flutter_study_diary/diary_layout.dart';

class Questioner extends StatelessWidget {
  const Questioner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DiaryLayout(
      context: context,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "test",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () => {},
                child: const Text(
                  "True",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () => {},
                child: const Text(
                  "False",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const Row(
            children: <Widget>[
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              Icon(
                Icons.close,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
