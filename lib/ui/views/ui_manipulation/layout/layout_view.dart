import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_final_stage_listview_component.dart';
import './../../../../core/router/routes.dart';

class LayoutView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
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

  final String _appBarTitle = 'Layout';

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
