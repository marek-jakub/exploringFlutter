import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String title = 'Placeholder';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Placeholder example'),
      ),
      body: _buildPlaceholderWidget(),
    );
  }

  _buildPlaceholderWidget() {
    return const Column(
      children: [
        Placeholder(
          fallbackHeight: 250,
          strokeWidth: 10,
          color: Colors.red,
        ),
        Expanded(
          child: Text('Expanded text'),
        ),
        Placeholder(
          fallbackHeight: 170,
          strokeWidth: 5,
          color: Colors.green,
        ),
        Expanded(
          child: Text('Expanded text'),
        ),
        Placeholder(
          fallbackHeight: 100,
          strokeWidth: 1,
          color: Colors.blue,
        ),
      ],
    );
  }
}
