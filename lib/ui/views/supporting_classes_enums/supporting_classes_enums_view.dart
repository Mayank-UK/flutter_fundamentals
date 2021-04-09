import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import './../../components/custom_gridview_component.dart';
import './../../../core/router/router.dart';

class SupportingClassesEnumsView extends StatelessWidget {
  List<GridViewItem> _gridList = [
    GridViewItem(
      title: 'Supporting classes',
      route: RoutePaths.supportingClasses,
    ),
    GridViewItem(
      title: 'Supporting enums',
      route: RoutePaths.supportingEnums,
    ),
  ];

  String appBarTitle = 'Supporting classes and enums';

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
