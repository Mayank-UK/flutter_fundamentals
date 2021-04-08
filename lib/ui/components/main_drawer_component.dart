import 'package:flutter/material.dart';

class MainDrawerComponent extends StatelessWidget {
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
              'Flutter developer\'s guide',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Rate on Google Play'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Source code on GitHub'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Dark mode'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
