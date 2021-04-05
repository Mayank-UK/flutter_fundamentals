import 'package:flutter/material.dart';

class BestPracticesView extends StatelessWidget {
  String appBarTitle;

  BestPracticesView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        // drawer: MainDrawer(),
        body: Text('Best practices screen'));
  }
}
