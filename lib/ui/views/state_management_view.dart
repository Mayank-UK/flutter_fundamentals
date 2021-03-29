import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class StateManagementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('State management'),
        ),
        drawer: MainDrawer(),
        body: Text('State management screen'));
  }
}
