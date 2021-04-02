import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class NativeDeviceFeaturesView extends StatelessWidget {
  String appBarTitle;

  NativeDeviceFeaturesView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        drawer: MainDrawer(),
        body: Text('Native device features screen'));
  }
}
