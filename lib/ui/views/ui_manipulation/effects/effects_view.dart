import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class EffectsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Shadows',
      description: 'Shadows of widgets.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Opacity',
        description: 'Opacity of widgets.',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  EffectsView({@required this.appBarTitle});

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
