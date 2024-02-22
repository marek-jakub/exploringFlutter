import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Fonts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
            bodyLarge:
                GoogleFonts.aBeeZee(fontSize: 30, color: Colors.deepOrange),
            bodyMedium:
                GoogleFonts.aBeeZee(fontSize: 30, color: Colors.white60),
          )),
      home: const MyHomePage(title: 'Google Fonts'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Thoreau')),
      body: Column(
        children: [
          const Text("Thoreau's ideas"),
          Text(
            'Walking',
            style: GoogleFonts.coiny(fontSize: 30, color: Colors.blueGrey),
          ),
          Text(
            'Walking',
            style: GoogleFonts.actor(fontSize: 30, color: Colors.indigo),
          ),
        ],
      ),
    );
  }
}
