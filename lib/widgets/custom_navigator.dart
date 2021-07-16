import 'package:appc2v2/providers/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    return BottomNavigationBar(
        onTap: (int i) => iuProvider.menuSelect = i,
        currentIndex: indexPosition,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: 'Menu 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_rounded), label: 'Menu 2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new), label: 'Menu 3'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Menu 4'),
        ]);
  }
}
