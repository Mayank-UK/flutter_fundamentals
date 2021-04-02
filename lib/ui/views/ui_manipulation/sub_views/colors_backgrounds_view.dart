import 'package:flutter/material.dart';

class ColorsBackgroundsView extends StatelessWidget {
  String appBarTitle;

  ColorsBackgroundsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      body: Text('Colors and background view'),
    );
  }
}
