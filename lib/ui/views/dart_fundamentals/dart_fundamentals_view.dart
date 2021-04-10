import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';

class DartFundamentalsView extends StatelessWidget {
  final String _appBarTitle = 'Dart fundamentals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: const Text('Dart fundamentals view'),
    );
  }
}
