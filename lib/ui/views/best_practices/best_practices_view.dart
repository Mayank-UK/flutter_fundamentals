import 'package:flutter/material.dart';

class BestPracticesView extends StatelessWidget {
  String appBarTitle = 'Best practices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Best practices screen'));
  }
}
