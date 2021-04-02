import 'package:flutter/material.dart';

class BordersView extends StatelessWidget {
  String appBarTitle;

  BordersView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Borders view'));
  }
}
