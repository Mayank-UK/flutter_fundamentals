import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class LayoutView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Page layout',
      description: 'Structuring a full page.',
      route: RoutePaths.pageLayout,
    ),
    ListViewItem(
      title: 'Basic layout',
      description: 'Basic layout like row, container, etc',
      route: RoutePaths.basicLayout,
    ),
  ];

  String appBarTitle = 'Layout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
