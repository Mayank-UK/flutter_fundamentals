import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class AlignmentView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Horizontal alignment',
        description: 'Horizontal alignment description.',
        route: RoutePaths.horizontalAlignment),
    ListViewItem(
        title: 'Vertical alignment',
        description: 'Vertical alignment description',
        route: RoutePaths.verticalAlignment),
  ];

  String appBarTitle = 'Alignment';

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
