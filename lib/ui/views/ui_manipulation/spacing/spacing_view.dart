import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
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
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: CustomListView(
        itemList: _itemList,
      ),
    );
  }
}
