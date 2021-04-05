import 'package:flutter/material.dart';

import '../../widgets/main_appbar.dart';

class DartFundamentalsView extends StatelessWidget {
  String appBarTitle;

  DartFundamentalsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      // drawer: MainDrawer(),
      body: Text('Dart fundamentals screen'),
    );
  }
}
