import 'package:flutter/material.dart';

class BestPracticesView extends StatelessWidget {
  final String _appBarTitle = 'Best practices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
        ),
        body: const Text('Best practices screen'));
  }
}
