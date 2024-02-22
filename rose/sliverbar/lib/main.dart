import 'package:flutter/material.dart';

import '../data_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver App Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sliver App Bar'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text('Sliver App Bar and List'),
            expandedHeight: 300,
            collapsedHeight: 150,
          ),
          MySliverList(),
        ],
      ),
    );
  }
}

class MySliverList extends StatelessWidget {
  MySliverList({super.key});

  final ListDataItems item = ListDataItems();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => MyListTile(item.carItems[index]),
          childCount: item.carItems.length),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(this.carItem, {super.key});
  final CarItem? carItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(carItem!.url),
      ),
      title: Text(carItem!.title),
      subtitle: Text(carItem!.subtitle),
    );
  }
}
