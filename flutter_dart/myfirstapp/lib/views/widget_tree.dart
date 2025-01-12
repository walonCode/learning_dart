import 'package:flutter/material.dart';
import 'package:myfirstapp/data/notifiers.dart';
import 'package:myfirstapp/views/pages/home_page.dart';
import 'package:myfirstapp/views/pages/profile_page.dart';
import 'package:myfirstapp/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Map'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                );
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: selectPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
          }),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
