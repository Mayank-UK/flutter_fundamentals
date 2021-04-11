import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
import '../../components/custom_mid_stage_listview_component.dart';

class LifecycleView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Application lifecycle',
      description: 'Doing stuff at various stages of an application lifecycle.',
      route: RoutePaths.applicationLifecycle,
    ),
    ListViewItem(
      title: 'Widget lifecycle',
      description: 'Doing stuff at various stages of a widget lifecycle.',
      route: RoutePaths.widgetLifecycle,
    ),
  ];

  final String _appBarTitle = 'Lifecycle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomMidStageListViewComponent(
        itemList: this._itemList,
      ),
    );
  }
}
