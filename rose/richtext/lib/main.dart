import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = 'Rich Text';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            title,
          ),
        ),
        body: const MyRichText(),
      ),
    );
  }
}

double screenHeight = 0.0;

class MyRichText extends StatelessWidget {
  const MyRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height / 3;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: screenHeight,
            color: Colors.red,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Great White Shark',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: screenHeight,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
