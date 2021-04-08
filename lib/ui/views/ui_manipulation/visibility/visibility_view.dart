import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class VisibilityView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'In flow',
        description:
            'The widgets are still part of widget tree but do not render and still occupy space in the UI.',
        route: RoutePaths.inFlow),
    ListViewItem(
        title: 'Out flow',
        description:
            'The widgets just get removed from the widget tree and do not occupy space in the UI.',
        route: RoutePaths.outFlow),
  ];

  String appBarTitle = 'Visibility';

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
