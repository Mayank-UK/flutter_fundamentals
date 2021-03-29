import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class UiManipulationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI manipulation'),
        ),
        drawer: MainDrawer(),
        body: Text('UI manipulation screen'));
  }
}
