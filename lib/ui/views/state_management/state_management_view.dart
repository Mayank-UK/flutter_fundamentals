import 'package:flutter/material.dart';

import '../../../core/router/router.dart';
import '../../components/main_appbar_component.dart';
import '../../components/custom_listview_component.dart';

class StateManagementView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Basics',
        description: 'Basics of state management using provider.',
        route: RoutePaths.state_management_basics),
    ListViewItem(
        title: 'Todos application example',
        description: 'Implementation of a simple todo application.',
        route: RoutePaths.state_management_todos_example),
  ];

  String appBarTitle = 'State management';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
