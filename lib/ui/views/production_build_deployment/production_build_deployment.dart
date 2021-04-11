import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import './../../components/custom_final_stage_listview_component.dart';
import './../../../core/router/routes.dart';

class ProductionBuildDeploymentView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Production build',
      description:
          'Generating a lean performance optimized build for deployment.',
      route: RoutePaths.productionBuild,
    ),
    ListViewItem(
      title: 'Android deployment',
      description: 'Putting the application on the android market.',
      route: RoutePaths.androidDeployment,
    ),
    ListViewItem(
      title: 'Appstore deployment',
      description: 'Putting the application on the ios market.',
      route: RoutePaths.iosDeployment,
    ),
    ListViewItem(
      title: 'Web deployment',
      description: 'Putting the application on web servers.',
      route: RoutePaths.webDeployment,
    ),
  ];

  final String _appBarTitle = 'Production build and deployment';

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
