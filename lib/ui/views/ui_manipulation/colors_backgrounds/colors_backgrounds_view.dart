import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class ColorsBackgroundsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Text Color',
      description: 'Text color',
      route: RoutePaths.colors,
    ),
    ListViewItem(
      title: 'Background',
      description: 'Background color',
      route: RoutePaths.backgrounds,
    ),
  ];

  String appBarTitle = 'Colors and backgrounds';

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
