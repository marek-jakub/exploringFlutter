import 'package:flutter/material.dart';

import './list_items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal List'),
        ),
        body: const HorizontalListView(),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MySizedBox();
  }
}

class MySizedBox extends StatelessWidget {
  MySizedBox({Key? key}) : super(key: key);

  final ListDataItems item = ListDataItems();

  final itemWidth = 12.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              MyListViewItem(item.menuItems[index]),
          separatorBuilder: (context, _) => SizedBox(
                width: itemWidth,
              ),
          itemCount: item.menuItems.length),
    );
  }
}

class MyListViewItem extends StatelessWidget {
  const MyListViewItem(this.item, {super.key});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                item.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            item.title,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            item.subtitle,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
