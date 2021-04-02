import 'package:flutter/material.dart';

class SpacingView extends StatelessWidget {
  String appBarTitle;

  SpacingView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      body: Text('Spacing view'),
    );
  }
}
