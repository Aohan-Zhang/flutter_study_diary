import 'package:flutter/material.dart';

class MyInfoCard extends StatelessWidget {
  const MyInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/my_info_card/head1.jpg"),
              ),
              const Text(
                "Aohan Zhang",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "A FLUTTER DEVELOPER",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Divider(
                    height: 1,
                    color: Colors.teal[100],
                  ),
                ),
              ),
              Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      "+86 123 4567 8901",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  )),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    "aohan@email.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
