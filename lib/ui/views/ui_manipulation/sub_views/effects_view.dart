import 'package:flutter/material.dart';

class EffectsView extends StatelessWidget {
  String appBarTitle;

  EffectsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Effects view'));
  }
}
