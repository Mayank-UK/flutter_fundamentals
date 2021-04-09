import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/router.dart';
import '../../components/custom_gridview_component.dart';

class LifecycleView extends StatelessWidget {
  List<GridViewItem> _gridList = [
    GridViewItem(
      title: 'Application lifecycle',
      route: RoutePaths.applicationLifecycle,
    ),
    GridViewItem(
      title: 'Widget lifecycle',
      route: RoutePaths.widgetLifecycle,
    ),
  ];

  String appBarTitle = 'Lifecycle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomGridViewComponent(
        gridList: _gridList,
      ),
    );
  }
}
