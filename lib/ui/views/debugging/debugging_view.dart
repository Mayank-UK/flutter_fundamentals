import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
import '../../components/custom_final_stage_listview_component.dart';

class DebuggingView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: '_',
      description: 'Description not available',
      route: RoutePaths.pageNotFound,
    ),
    ListViewItem(
      title: '_',
      description: 'Description not available',
      route: RoutePaths.pageNotFound,
    ),
    ListViewItem(
      title: '_',
      description: 'Description not available',
      route: RoutePaths.pageNotFound,
    ),
  ];

  final String _appBarTitle = 'Debugging';

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
