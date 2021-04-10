import 'package:flutter/material.dart';

class NavigationView extends StatelessWidget {
  final String _appBarTitle = 'Navigation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
        ),
        body: const Text('Navigation screen'));
  }
}
