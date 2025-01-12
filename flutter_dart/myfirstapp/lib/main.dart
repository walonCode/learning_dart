import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//material app
//scaffold


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App',
          style: TextStyle(color: Colors.red),),
          centerTitle: true,
          // leading: Icon(Icons.login),
          // backgroundColor: Colors.white,
        ),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.mic), label: 'Mic')
        ],
        onDestinationSelected: (int value) => {},
        selectedIndex: 0,
        ),
      ),
    );
  }
}