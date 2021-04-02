import 'package:flutter/material.dart';

import '../../core/router/router.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Flutter fundamentals',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Dart fundamentals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.dartFundamentals,
                  arguments: {"appBarTitle": "Dart fundamentals"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Flutter fundamentals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.flutterFundamentals,
                  arguments: {"appBarTitle": "Flutter fundamentals"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('UI manipulation'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.uiManipulation,
                  arguments: {"appBarTitle": "Basic UI manipulation"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Widgets catalog'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.widgetsCatalog,
                  arguments: {"appBarTitle": "Widgets catalog"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Navigation'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(RoutePaths.navigation,
                  arguments: {"appBarTitle": "Navigation"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('State management'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.stateManagement,
                  arguments: {"appBarTitle": "State management"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Native device features'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.nativeDeviceFeatures,
                  arguments: {"appBarTitle": "Native device features"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Architecture'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.architecture,
                  arguments: {"appBarTitle": "Architecture"});
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Best practices'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                  RoutePaths.bestPractices,
                  arguments: {"appBarTitle": "Best practices"});
            },
          ),
        ],
      ),
    );
  }
}
