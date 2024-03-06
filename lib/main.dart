import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFE91E63); // Pink
    Color secondaryColor = Color(0xFF9C27B0); // Purple
    Color textColor = Colors.black;
    double fontSize1 = 32.0;
    double fontSize2 = 24.0;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text('My app'),
          backgroundColor: secondaryColor,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TEXT 1',
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSize1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: secondaryColor,
                        size: 42.0,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Center(
                  child: Text(
                    'TEXT 2',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: fontSize2,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

