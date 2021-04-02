import 'package:flutter/material.dart';

class PositioningView extends StatelessWidget {
  String appBarTitle;

  PositioningView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Positioning view'));
  }
}
