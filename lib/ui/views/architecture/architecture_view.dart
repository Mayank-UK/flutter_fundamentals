import 'package:flutter/material.dart';

class ArchitectureView extends StatelessWidget {
  final String _appBarTitle = 'Architecture';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
        ),
        body: const Text('Architecture screen'));
  }
}
