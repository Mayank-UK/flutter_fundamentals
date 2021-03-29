import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FlutterFundamentalsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter fundaments'),
        ),
        drawer: MainDrawer(),
        body: Text('Flutter fundamentals screen'));
  }
}
