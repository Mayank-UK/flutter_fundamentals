import 'package:flutter/material.dart';

class PageNotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('404 error'),
        ),
        body: Text('Page not found screen'));
  }
}
