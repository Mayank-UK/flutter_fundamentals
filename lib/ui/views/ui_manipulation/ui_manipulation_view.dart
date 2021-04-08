import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/custom_gridview_component.dart';
import '../../../core/router/router.dart';

class UiManipulationView extends StatelessWidget {
  List<GridViewItem> _gridList = [
    GridViewItem(title: 'Alignment', route: RoutePaths.alignment),
    GridViewItem(title: 'Borders', route: RoutePaths.borders),
    GridViewItem(
        title: 'Colors and backgrounds', route: RoutePaths.colorsBackgrounds),
    GridViewItem(
        title: 'Dimensions and constraints',
        route: RoutePaths.dimensionsConstraints),
    GridViewItem(title: 'Effects', route: RoutePaths.effects),
    GridViewItem(title: 'Positioning', route: RoutePaths.positioning),
    GridViewItem(title: 'Spacing', route: RoutePaths.spacing),
    GridViewItem(title: 'Text', route: RoutePaths.textManipulation),
    GridViewItem(title: 'Visibility', route: RoutePaths.visibility),
  ];

  String appBarTitle = 'UI manipulation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomGridViewComponent(
        gridList: this._gridList,
      ),
    );
  }
}
