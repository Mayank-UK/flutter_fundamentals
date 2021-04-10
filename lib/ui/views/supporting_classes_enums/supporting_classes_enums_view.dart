import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import './../../components/custom_mid_stage_listview_component.dart';
import './../../../core/router/routes.dart';

class SupportingClassesEnumsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Supporting classes',
      description: 'Description not available',
      route: RoutePaths.supportingClasses,
    ),
    ListViewItem(
      title: 'Supporting enums',
      description: 'Description not available',
      route: RoutePaths.supportingEnums,
    ),
  ];

  final String _appBarTitle = 'Supporting classes and enums';

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
