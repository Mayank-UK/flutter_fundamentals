import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class EffectsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Shadows',
      description: 'Shadows of widgets.',
      route: RoutePaths.shadows,
    ),
    ListViewItem(
        title: 'Opacity',
        description: 'Opacity of widgets.',
        route: RoutePaths.opacityEffect),
  ];

  String appBarTitle = 'Effects';

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
