import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import './../../components/custom_mid_stage_listview_component.dart';
import './../../../core/router/routes.dart';

class TestingView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Unit testing',
      description: 'Testing individual unit in isolation.',
      route: RoutePaths.unitTesting,
    ),
    ListViewItem(
      title: 'Integration testing',
      description:
          'Testing the integrated functionality between two or more units.',
      route: RoutePaths.integrationTesting,
    ),
  ];

  final String _appBarTitle = 'Testing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomMidStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
