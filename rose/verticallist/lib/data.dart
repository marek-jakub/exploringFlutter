class ListTileItem {
  final String monthItem;
  const ListTileItem({required this.monthItem});
}

class ListDataItems {
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

  ListDataItems();
}
