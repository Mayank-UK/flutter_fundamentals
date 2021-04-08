import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class SpacingView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Padding',
        description: 'Spacing between parent and it\'s children.',
        route: RoutePaths.paddingSpacing),
    ListViewItem(
      title: 'Margin',
      description: 'Spacing from the surrounding elements.',
      route: RoutePaths.marginSpacing,
    ),
  ];

  String appBarTitle = 'spacing';

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
