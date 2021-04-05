import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class SpacingView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Margin',
      description: 'Spacing from the surrounding elements.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Padding',
        description: 'Spacing between parent and it\'s children.',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  SpacingView({@required this.appBarTitle});

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
