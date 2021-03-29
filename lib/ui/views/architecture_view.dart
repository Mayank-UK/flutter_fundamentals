import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class ArchitectureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Architecture'),
        ),
        drawer: MainDrawer(),
        body: Text('Architecture screen'));
  }
}
