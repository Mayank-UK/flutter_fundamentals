import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class PageNotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('404 error code'),
        ),
        drawer: MainDrawer(),
        body: Text('The page you are looking for do not exist.'));
  }
}
