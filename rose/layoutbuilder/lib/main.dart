import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'Layout Builder';
  @override
  Widget build(BuildContext context) {
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
        title: const Text('Layout Builder example'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Restrict based on width
          if (constraints.maxWidth > 800) {
            return _buildTripleContainers();
          } else {
            if (constraints.maxWidth > 600 && constraints.maxWidth <= 800) {
              return _buildDoubleContainers();
            } else {
              return _buildSingleContainer();
            }
          }
        },
      ),
    );
  }

  Widget _buildSingleContainer() {
    return Center(
      child: Container(
        height: 400.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildDoubleContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.yellow,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildTripleContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.yellow,
          ),
          Container(
            height: 400.0,
            width: 100.0,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
