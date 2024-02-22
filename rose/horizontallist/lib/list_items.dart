class MenuItem {
  final String title;
  final String subtitle;
  final String url;
  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.url,
  });
}

class ListDataItems {
  final List<MenuItem> menuItems = [
    const MenuItem(
      title: 'Item #1',
      subtitle: 'Subtitle #1',
      url:
          'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    const MenuItem(
      title: 'Item #2',
      subtitle: 'Subtitle #2',
      url:
          'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    const MenuItem(
      title: 'Item #3',
      subtitle: 'Subtitle #3',
      url:
          'https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    ),
    const MenuItem(
      title: 'Item #4',
      subtitle: 'Subtitle #4',
      url:
          'https://images.unsplash.com/photo-1551782450-17144efb9c50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  ListDataItems();
}
