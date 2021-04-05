import 'package:flutter/material.dart';

class ArchitectureView extends StatelessWidget {
  String appBarTitle;

  ArchitectureView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        // drawer: MainDrawer(),
        body: Text('Architecture screen'));
  }
}
