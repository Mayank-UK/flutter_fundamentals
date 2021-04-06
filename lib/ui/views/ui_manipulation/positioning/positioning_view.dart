import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class PositioningView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Plane positioning',
      description: 'Positioning in a plain.',
      route: RoutePaths.planePositioning,
    ),
    ListViewItem(
        title: 'Depth positioning',
        description: 'Positioning at a depth.',
        route: RoutePaths.depthPositioning),
  ];

  String appBarTitle = 'Positioning';

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
