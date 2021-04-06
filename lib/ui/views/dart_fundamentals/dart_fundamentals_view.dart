import 'package:flutter/material.dart';

import '../../widgets/main_appbar.dart';

class DartFundamentalsView extends StatelessWidget {
  String appBarTitle = 'Dart fundamentals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: Text('Dart fundamentals view'),
    );
  }
}
