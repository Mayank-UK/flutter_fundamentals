import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class TextView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Size',
      description: 'The size of text.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Fonts',
        description: 'Using different font families.',
        route: RoutePaths.spacing),
    ListViewItem(
        title: 'Type',
        description: 'Font style like bold, italics, etc',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  TextView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: CustomListView(
        itemList: _itemList,
      ),
    );
  }
}
