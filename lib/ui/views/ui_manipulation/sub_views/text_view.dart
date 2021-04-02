import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  String appBarTitle;

  TextView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Text view'));
  }
}
