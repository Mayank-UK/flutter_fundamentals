import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/custom_mid_stage_listview_component.dart';
import '../../../core/router/routes.dart';

class UiManipulationView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Layout',
        description: 'Description not available',
        route: RoutePaths.layout),
    ListViewItem(
        title: 'Dimensions and constraints',
        description: 'Description not available',
        route: RoutePaths.dimensionsConstraints),
    ListViewItem(
        title: 'Spacing',
        description: 'Description not available',
        route: RoutePaths.spacing),
    ListViewItem(
        title: 'Colors and backgrounds',
        description: 'Description not available',
        route: RoutePaths.colorsBackgrounds),
    ListViewItem(
        title: 'Text',
        description: 'Description not available',
        route: RoutePaths.textManipulation),
    ListViewItem(
        title: 'Alignment',
        description: 'Description not available',
        route: RoutePaths.alignment),
    ListViewItem(
        title: 'Borders',
        description: 'Description not available',
        route: RoutePaths.borders),
    ListViewItem(
        title: 'Icons and images',
        description: 'Description not available',
        route: RoutePaths.iconsImages),
    ListViewItem(
        title: 'Effects',
        description: 'Description not available',
        route: RoutePaths.effects),
    ListViewItem(
        title: 'Positioning',
        description: 'Description not available',
        route: RoutePaths.positioning),
    ListViewItem(
        title: 'Visibility',
        description: 'Description not available',
        route: RoutePaths.visibility),
    ListViewItem(
        title: 'Theme',
        description: 'Description not available',
        route: RoutePaths.themeManipulation),
    ListViewItem(
        title: 'Interactive behaviors',
        description: 'Description not available',
        route: RoutePaths.interactiveBehavior),
    ListViewItem(
        title: 'Form',
        description: 'Description not available',
        route: RoutePaths.formUiManipulation),
    ListViewItem(
        title: 'Responsive and adaptive layout',
        description: 'Description not available',
        route: RoutePaths.responsiveAdaptiveUi),
  ];

  final String _appBarTitle = 'UI manipulation';

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
