import 'package:flutter/material.dart';

class FlutterFundamentalsView extends StatelessWidget {
  String appBarTitle = 'Flutter fundamentals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Flutter fundamentals'));
  }
}
