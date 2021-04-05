import 'package:flutter/material.dart';

import '../../widgets/main_appbar.dart';
import '../../widgets/custom_gridview.dart';
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
    GridViewItem(title: 'Text', route: RoutePaths.text),
    GridViewItem(title: 'Visibility', route: RoutePaths.visibility),
  ];

  String appBarTitle;

  UiManipulationView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      // drawer: MainDrawer(),
      body: CustomGridView(
        gridList: this._gridList,
      ),
    );
  }
}
