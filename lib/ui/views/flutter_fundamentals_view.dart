import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './../widgets/AppBarWithBackButton.dart';

class FlutterFundamentalsView extends StatelessWidget {
  String appBarTitle;

  FlutterFundamentalsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          appBarTitle: this.appBarTitle,
        ),
        drawer: MainDrawer(),
        body: Text('Flutter fundamentals'));
  }
}
