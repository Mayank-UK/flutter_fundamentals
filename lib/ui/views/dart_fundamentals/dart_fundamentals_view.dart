import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';

class DartFundamentalsView extends StatelessWidget {
  String appBarTitle = 'Dart fundamentals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: Text('Dart fundamentals view'),
    );
  }
}
