import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
import '../../components/custom_mid_stage_listview_component.dart';

class WidgetCatalogView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Accessibility',
        description: 'Make your app accessible.',
        route: RoutePaths.accessibilityWidgets),
    ListViewItem(
        title: 'Animations and motion',
        description: 'Bring animations to your app.',
        route: RoutePaths.animationMotionWidgets),
    ListViewItem(
        title: 'Assets, icons and images',
        description: 'Manage assets, display images, and show icons.',
        route: RoutePaths.assetWidgets),
    ListViewItem(
        title: 'Async',
        description: 'Async patterns to your Flutter application.',
        route: RoutePaths.asyncWidgets),
    ListViewItem(
        title: 'Cupertino',
        description:
            'Beautiful and high-fidelity widgets for current iOS design language.',
        route: RoutePaths.cupertinoWidgets),
    ListViewItem(
        title: 'Input',
        description:
            'Take user input in addition to input widgets in Material Components and Cupertino.',
        route: RoutePaths.inputWidgets),
    ListViewItem(
        title: 'Interactive',
        description:
            'Respond to touch events and route users to different views.',
        route: RoutePaths.interactiveWidgets),
    ListViewItem(
        title: 'Layout',
        description:
            'Arrange other widgets columns, rows, grids, and many other layouts.',
        route: RoutePaths.layoutWidgets),
    ListViewItem(
        title: 'Material',
        description:
            'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
        route: RoutePaths.materialWidgets),
    ListViewItem(
        title: 'Painting and effects',
        description:
            'These widgets apply visual effects to the children without changing their layout, size, or position.',
        route: RoutePaths.paintingEffectWidgets),
    ListViewItem(
        title: 'Scrolling',
        description: 'Scroll multiple widgets as children of the parent.',
        route: RoutePaths.scrollingWidgets),
    ListViewItem(
        title: 'Styling',
        description:
            'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
        route: RoutePaths.stylingWidgets),
    ListViewItem(
        title: 'Text',
        description: 'Display and style text.',
        route: RoutePaths.textWidgets),
  ];

  final String _appBarTitle = 'Widget catalog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomMidStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
