import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';

class PageNotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('404 error'),
        ),
        // drawer: MainDrawer(),
        body: Text('Page not found screen'));
  }
}
