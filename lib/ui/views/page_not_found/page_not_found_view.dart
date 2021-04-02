import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class PageNotFoundView extends StatelessWidget {
  String appBarTitle;

  PageNotFoundView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
        ),
        drawer: MainDrawer(),
        body: Text('Page not found screen'));
  }
}
