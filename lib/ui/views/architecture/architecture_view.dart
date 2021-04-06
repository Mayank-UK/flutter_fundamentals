import 'package:flutter/material.dart';

class ArchitectureView extends StatelessWidget {
  String appBarTitle = 'Architecture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Architecture screen'));
  }
}
