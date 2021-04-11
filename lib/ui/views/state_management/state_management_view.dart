import 'package:flutter/material.dart';

import '../../../core/router/routes.dart';
import '../../components/main_appbar_component.dart';
import '../../components/custom_final_stage_listview_component.dart';

class StateManagementView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'State management basics and stateful widgets',
        description: 'Managing state using stateful widgets.',
        route: RoutePaths.state_management_basics),
    ListViewItem(
        title: '"Provider" package for state management',
        description:
            'Basics of state management using provider (officially supported).',
        route: RoutePaths.providerStateManagement),
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
