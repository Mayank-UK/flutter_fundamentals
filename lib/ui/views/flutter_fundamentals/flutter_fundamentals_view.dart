import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class FlutterFundamentalsView extends StatelessWidget {
  String appBarTitle;

  FlutterFundamentalsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        drawer: MainDrawer(),
        body: Text('Flutter fundamentals'));
  }
}
