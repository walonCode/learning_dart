import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
          ],
          onDestinationSelected: (value) => {
            selectPageNotifier.value = value
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
