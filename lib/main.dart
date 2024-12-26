import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   //to remove debug banner
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,   //to change app bar background
          title: const Text(
            "My First Project",
            style: TextStyle(
              fontFamily: 'Suwannaphum',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,     //put the page title in centre
        ),
        body: Column(     //add the widgets in column
          children: [    
          Row(     //to add the two images in a row widget
            children: [
              Padding(    //add padding around asset image
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(    //to add image from device
                  'assets/images/sea.jpeg',
                  width: 160,
                ),
              ),
              SizedBox(width: 62),    //add a sized box to create a gap between two images
              Image.network(       //to add image from the internet
                'https://picsum.photos/id/1/200/300',
                width: 160,
              ),
            ],
          ),
          Padding(    //to add padding around the text
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
