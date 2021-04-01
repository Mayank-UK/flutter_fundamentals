/* import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class DartFundamentalsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dart fundamentals'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_sharp,
            ),
          ),
        ),
        drawer: MainDrawer(),
        body: Text('Dart fundamentals'));
  }
}
 */

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './../widgets/AppBarWithBackButton.dart';

class DartFundamentalsView extends StatelessWidget {
  String appBarTitle;

  DartFundamentalsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          appBarTitle: this.appBarTitle,
        ),
        drawer: MainDrawer(),
        body: Text('Dart fundamentals screen'));
  }
}
