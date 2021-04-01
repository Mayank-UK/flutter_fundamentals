import 'package:flutter/material.dart';

import './../../core/router/router.dart';
import '../widgets/main_drawer.dart';
import './../widgets/tappable_gridview.dart';

class GridViewItem {
  String title;
  String route;

  GridViewItem({@required String this.title, @required String this.route});
}

class HomeView extends StatelessWidget {
  List _gridList = [
    GridViewItem(
        title: 'Dart fundamentals', route: RoutePaths.dartFundamentals),
    GridViewItem(
        title: 'Flutter fundamentals', route: RoutePaths.flutterFundamentals),
    GridViewItem(
        title: 'Basic UI manipulation', route: RoutePaths.uiManipulation),
    GridViewItem(title: 'Widgets catalog', route: RoutePaths.widgetsCatalog),
    GridViewItem(title: 'Navigation', route: RoutePaths.navigation),
    GridViewItem(title: 'State management', route: RoutePaths.stateManagement),
    GridViewItem(
        title: 'Native device features',
        route: RoutePaths.nativeDeviceFeatures),
    GridViewItem(title: 'Architecture', route: RoutePaths.architecture),
    GridViewItem(title: 'Best practices', route: RoutePaths.bestPractices),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: MainDrawer(),
      // body: Text('Flutter fundamentals screen'),
      body: TappableGridView(
        gridList: _gridList,
      ),
    );
  }
}
