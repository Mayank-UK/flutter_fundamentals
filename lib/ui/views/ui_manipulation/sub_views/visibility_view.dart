import 'package:flutter/material.dart';

class VisibilityView extends StatelessWidget {
  String appBarTitle;

  VisibilityView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Visibility view'));
  }
}
