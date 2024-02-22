import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Media query'),
        ),
        body: const MediaQueryWidget(),
      ),
    );
  }
}

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Screen Width: ${MediaQuery.of(context).size.width}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.grey,
          ),
        ),
        Text(
          'Screen Height: ${MediaQuery.of(context).size.height}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.blue,
          ),
        ),
        Text(
          'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
        Text(
          'Orientation: ${MediaQuery.of(context).orientation}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
