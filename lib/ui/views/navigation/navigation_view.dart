import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class NavigationView extends StatelessWidget {
  String appBarTitle;

  NavigationView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        drawer: MainDrawer(),
        body: Text('Navigation screen'));
  }
}
