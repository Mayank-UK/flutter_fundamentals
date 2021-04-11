import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
import '../../components/custom_final_stage_listview_component.dart';

class NavigationRoutingView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Imperative approach',
      description: 'Using Navigator 1.0 API introduced in flutter 1.0.',
      route: RoutePaths.imperativeRouting,
    ),
    ListViewItem(
      title: 'Declarative approach',
      description: 'Using Navigator 2.0 API introduced in flutter 2.0.',
      route: RoutePaths.declarativeRouting,
    ),
  ];

  final String _appBarTitle = 'Navigation and routing';

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
