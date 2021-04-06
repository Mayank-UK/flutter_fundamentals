import 'package:flutter/material.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  String appBarTitle = 'Native device features';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        body: Text('Native device features screen'));
  }
}
