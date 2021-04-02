import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

import './../../../core/router/router.dart';

class DartFundamentalsView extends StatelessWidget {
  String appBarTitle;

  DartFundamentalsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      drawer: MainDrawer(),
      body: Text('Dart fundamentals screen'),
    );
  }
}
