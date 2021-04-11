import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './core/providers/provider_setup.dart';

import './core/router/routes.dart';
import './core/router/router.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter fundamentals',
        initialRoute: RoutePaths.home,
        onGenerateRoute: MyRouter.generateRoute,
      ),
    );
  }
}
