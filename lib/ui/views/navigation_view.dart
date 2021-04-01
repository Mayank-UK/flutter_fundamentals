/* import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class NavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
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
        body: Text('Navigation view'));
  }
}
 */

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './../widgets/AppBarWithBackButton.dart';

class NavigationView extends StatelessWidget {
  String appBarTitle;

  NavigationView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          appBarTitle: this.appBarTitle,
        ),
        drawer: MainDrawer(),
        body: Text('Navigation screen'));
  }
}
