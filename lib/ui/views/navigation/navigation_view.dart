import 'package:flutter/material.dart';

class NavigationView extends StatelessWidget {
  String appBarTitle = 'Navigation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Navigation screen'));
  }
}
