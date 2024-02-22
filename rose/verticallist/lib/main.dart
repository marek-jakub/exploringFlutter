import 'package:flutter/material.dart';
import 'package:verticallist/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List tiles',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List tiles'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView({super.key});
  final ListDataItems item = ListDataItems();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.monthItems.length,
      itemBuilder: (context, index) {
        return MyListTile(item.monthItems[index]);
      },
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(this.item, {super.key});
  final ListTileItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.monthItem),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('You selected ${item.monthItem}'),
          ),
        );
      },
    );
  }
}
