import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Host platform';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          backgroundColor: Colors.green,
        ),
        body: const MyPlatformWidget(),
      ),
    );
  }
}

class MyPlatformWidget extends StatelessWidget {
  const MyPlatformWidget({Key? key}) : super(key: key);

  bool get isMobileDevice => !kIsWeb && (Platform.isIOS || Platform.isAndroid);
  bool get isDesktopDevice =>
      !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
  bool get isMobileDeviceOrWeb => kIsWeb || isMobileDevice;
  bool get isDesktopDeviceOrWeb => kIsWeb || isDesktopDevice;
  bool get isAndroid => !kIsWeb && Platform.isAndroid;
  bool get isFuchsia => !kIsWeb && Platform.isFuchsia;
  bool get isIOS => !kIsWeb && Platform.isIOS;
  bool get isLinux => !kIsWeb && Platform.isLinux;
  bool get isMacOS => !kIsWeb && Platform.isMacOS;
  bool get isWindows => !kIsWeb && Platform.isWindows;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Web: $kIsWeb',
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'Android: $isAndroid',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'Fuchsia: $isFuchsia',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'IOS: $isIOS',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'Linux: $isLinux',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'MacOS: $isMacOS',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'Windows: $isWindows',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'isMobileDevice: $isMobileDevice',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'isDesktopDevice: $isDesktopDevice',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'isMobileDeviceOrWeb: $isMobileDeviceOrWeb',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          'isDesktopDeviceOrWeb: $isDesktopDeviceOrWeb',
          style: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}
