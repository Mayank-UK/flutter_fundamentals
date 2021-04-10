import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_final_stage_listview_component.dart';
import './../../../../core/router/routes.dart';

class EffectsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
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

  final String _appBarTitle = 'Effects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
