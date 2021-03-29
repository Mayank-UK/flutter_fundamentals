import 'package:flutter/material.dart';

import '../../router.dart';

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
            title: Text('Flutter fundamentals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(RoutePaths.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('UI manipulation'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(RoutePaths.uiManipulation);
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Widgets catalog'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(RoutePaths.widgetsCatalog);
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('State management'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(RoutePaths.stateManagement);
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Architecture'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(RoutePaths.architecture);
            },
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Best practices'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(RoutePaths.bestPractices);
            },
          ),
        ],
      ),
    );
  }
}
