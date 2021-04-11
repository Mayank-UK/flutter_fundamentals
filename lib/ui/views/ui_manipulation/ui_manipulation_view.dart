import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/custom_mid_stage_listview_component.dart';
import '../../../core/router/routes.dart';

class UiManipulationView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Layout',
        description: 'Building the page structure.',
        route: RoutePaths.layout),
    ListViewItem(
        title: 'Dimensions and constraints',
        description: 'Setting height, widths and constraints on widgets.',
        route: RoutePaths.dimensionsConstraints),
    ListViewItem(
        title: 'Spacing',
        description: 'Margin and padding on widgets.',
        route: RoutePaths.spacing),
    ListViewItem(
        title: 'Colors and backgrounds',
        description: 'Text and background colors.',
        route: RoutePaths.colorsBackgrounds),
    ListViewItem(
        title: 'Text',
        description: 'Using and manipulating text in UI.',
        route: RoutePaths.textManipulation),
    ListViewItem(
        title: 'Alignment',
        description: 'Specifying the alignment on widgets.',
        route: RoutePaths.alignment),
    ListViewItem(
        title: 'Borders',
        description: 'Setting and modifying borders.',
        route: RoutePaths.borders),
    ListViewItem(
        title: 'Icons and images',
        description: 'Using icons and images in layout.',
        route: RoutePaths.iconsImages),
    ListViewItem(
        title: 'Effects',
        description: 'Things like shadows, opacity, etc',
        route: RoutePaths.effects),
    ListViewItem(
        title: 'Positioning',
        description: 'Positioning UI elements in layout.',
        route: RoutePaths.positioning),
    ListViewItem(
        title: 'Visibility',
        description: 'Make a UI element visible, transparent, or invisible.',
        route: RoutePaths.visibility),
    ListViewItem(
        title: 'Theme',
        description: 'Define the styles one time and at one place.',
        route: RoutePaths.themeManipulation),
    ListViewItem(
        title: 'Interactive behaviors',
        description: 'Interaction to click, hover, focus, etc',
        route: RoutePaths.interactiveBehavior),
    ListViewItem(
        title: 'Hyperlinks',
        description: 'Navigating to a resource location on web.',
        route: RoutePaths.hyperlinks),
    ListViewItem(
        title: 'Form',
        description: 'Mechanism to take user input.',
        route: RoutePaths.formUiManipulation),
    ListViewItem(
        title: 'Responsive and adaptive layout',
        description: 'Make application display properly on various devices.',
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
