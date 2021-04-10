import 'package:flutter/material.dart';

import '../../../core/router/routes.dart';
import '../../components/main_appbar_component.dart';
import '../../components/custom_final_stage_listview_component.dart';

class StateManagementView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Basics',
        description: 'Basics of state management using provider.',
        route: RoutePaths.state_management_basics),
    ListViewItem(
        title: 'Todos application example',
        description: 'Implementation of a simple todo application.',
        route: RoutePaths.state_management_todos_example),
  ];

  final String _appBarTitle = 'State management';

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
