import 'package:flutter/material.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  final String _appBarTitle = 'Native device features';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
        ),
        body: const Text('Native device features screen'));
  }
}
