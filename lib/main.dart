import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            "My First Project",
            style: TextStyle(
              fontFamily: 'Suwannaphum',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/sea.jpeg',
                  width: 160,
                ),
              ),
              SizedBox(width: 62),
              Image.network(
                'https://picsum.photos/id/1/200/300',
                width: 160,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "The two images are displayed",
              style: TextStyle(
                fontFamily: 'Suwannaphum',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
