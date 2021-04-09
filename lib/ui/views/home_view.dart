import 'package:flutter/material.dart';

import './../../core/router/router.dart';
import '../components/main_drawer_component.dart';
import '../components/custom_gridview_component.dart';

class HomeView extends StatelessWidget {
  List<GridViewItem> _gridList = [
    GridViewItem(
        title: 'Dart fundamentals', route: RoutePaths.dartFundamentals),
    GridViewItem(
        title: 'Flutter fundamentals', route: RoutePaths.flutterFundamentals),
    GridViewItem(title: 'UI manipulation', route: RoutePaths.uiManipulation),
    GridViewItem(title: 'Lifecycle', route: RoutePaths.lifecycle),
    GridViewItem(title: 'Navigation', route: RoutePaths.navigation),
    GridViewItem(title: 'State management', route: RoutePaths.stateManagement),
    GridViewItem(title: 'Testing', route: RoutePaths.testing),
    GridViewItem(title: 'Widget catalog', route: RoutePaths.widgetsCatalog),
    GridViewItem(
        title: 'Supporting classes and enums',
        route: RoutePaths.supportingClassesEnums),
    GridViewItem(
        title: 'Native device features',
        route: RoutePaths.nativeDeviceFeatures),
    GridViewItem(title: 'Architecture', route: RoutePaths.architecture),
    GridViewItem(title: 'Best practices', route: RoutePaths.bestPractices),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('Are you sure you want to exit?'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                  FlatButton(
                    child: Text('Yes, exit'),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              );
            });

        return value == true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter developer\'s guide'),
        ),
        drawer: MainDrawerComponent(),
        body: CustomGridViewComponent(
          gridList: _gridList,
        ),
      ),
    );
  }
}
