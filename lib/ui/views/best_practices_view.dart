/* import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class BestPracticesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Best practices'),
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
        body: Text('Best practices screen'));
  }
}

 */

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './../widgets/AppBarWithBackButton.dart';

class BestPracticesView extends StatelessWidget {
  String appBarTitle;

  BestPracticesView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          appBarTitle: this.appBarTitle,
        ),
        drawer: MainDrawer(),
        body: Text('Best practices screen'));
  }
}
