import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class ListTileItem {
  final String monthItem;

  const ListTileItem({required this.monthItem});
}

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final List<ListTileItem> monthItems = [
    const ListTileItem(monthItem: 'January'),
    const ListTileItem(monthItem: 'February'),
    const ListTileItem(monthItem: 'March'),
    const ListTileItem(monthItem: 'April'),
    const ListTileItem(monthItem: 'May'),
    const ListTileItem(monthItem: 'June'),
    const ListTileItem(monthItem: 'July'),
    const ListTileItem(monthItem: 'August'),
    const ListTileItem(monthItem: 'September'),
    const ListTileItem(monthItem: 'October'),
    const ListTileItem(monthItem: 'November'),
    const ListTileItem(monthItem: 'December'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: monthItems.length,
      itemBuilder: (context, index) {
        return MyListTile(monthItems[index]);
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
            action: SnackBarAction(label: 'Snackbar action', onPressed: () {}),
            duration: const Duration(seconds: 2, milliseconds: 250),
            content: Text('You selected ${item.monthItem}'),
          ),
        );
      },
    );
  }
}
