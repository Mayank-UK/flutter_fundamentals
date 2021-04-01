/* import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Native device features'),
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
        body: Text('Native device features'));
  }
}
 */

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './../widgets/AppBarWithBackButton.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  String appBarTitle;

  NativeDeviceFeaturesView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithBackButton(
          appBarTitle: this.appBarTitle,
        ),
        drawer: MainDrawer(),
        body: Text('Native device features screen'));
  }
}
