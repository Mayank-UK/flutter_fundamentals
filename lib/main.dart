import 'package:flutter/material.dart';

import 'core/router/router.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter fundamentals',
      initialRoute: RoutePaths.home,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
