import 'package:flutter/material.dart';

class FlutterFundamentalsView extends StatelessWidget {
  final String _appBarTitle = 'Flutter fundamentals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
        ),
        body: const Text('Flutter fundamentals'));
  }
}
