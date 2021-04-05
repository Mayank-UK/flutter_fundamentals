import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class PositioningView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: '2D',
      description: 'Positioning in a plain',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: '3D',
        description: 'Positioning in a 3D space',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  PositioningView({@required this.appBarTitle});

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
