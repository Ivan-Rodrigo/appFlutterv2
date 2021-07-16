import 'package:appc2v2/pages/pageViews/page1.dart';
import 'package:appc2v2/pages/pageViews/page2.dart';
import 'package:appc2v2/pages/pageViews/page3.dart';
import 'package:appc2v2/pages/pageViews/page4.dart';
import 'package:appc2v2/providers/ui_provider.dart';
import 'package:appc2v2/widgets/custom_navigator.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Tab'),
        actions: [],
      ),
      body: HomeTabContainer(),
      bottomNavigationBar: CustomNavigations(),
      //floatingActionButton: BottomCamera(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomeTabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    switch (indexPosition) {
      case 0:
        return Page1();
      case 1:
        return Page2();
      case 2:
        return Page3();
      case 3:
        return Page4();
      default:
        return Page1();
    }

    // return Center(
    //   child: Text('Hola mundo'),
    // );
  }
}
