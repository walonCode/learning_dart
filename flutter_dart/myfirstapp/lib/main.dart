import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

/// key things in  flutter
//material app(statefull widget)
//scaffold
//app bar
// navigation

//states
/// statefull === screen can refresh
/// stateless === screen cannot refresh
/// setstate == telling it to refresh

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal, brightness: Brightness.dark)),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Map')),
        bottomNavigationBar:NavbarWidget(),
      ),
    );
  }
}
