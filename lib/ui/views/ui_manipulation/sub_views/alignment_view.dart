import 'package:flutter/material.dart';

class AlignmentView extends StatelessWidget {
  String appBarTitle;

  AlignmentView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Alignment view'));
  }
}
