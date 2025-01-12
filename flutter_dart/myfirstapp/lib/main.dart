import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';
import 'package:myfirstapp/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal,
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
          )),
          home: WidgetTree(),
        );
      },
    );
  }
}
