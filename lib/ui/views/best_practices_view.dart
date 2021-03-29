import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class BestPracticesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Best practices'),
        ),
        drawer: MainDrawer(),
        body: Text('Best practices screen'));
  }
}
