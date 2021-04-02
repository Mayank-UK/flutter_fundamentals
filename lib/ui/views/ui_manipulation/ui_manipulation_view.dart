import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/custom_listview.dart';
import '../../../core/router/router.dart';

class UiManipulationView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Dimensions and constraints',
        description: 'Dimensions and constraints description',
        route: RoutePaths.dimensionsConstraints),
    ListViewItem(
        title: 'Spacing',
        description: 'Spacing description',
        route: RoutePaths.spacing),
    ListViewItem(
        title: 'Colors and backgrounds',
        description: 'Colors and backgrounds description',
        route: RoutePaths.colorsBackgrounds),
    ListViewItem(
        title: 'Alignment',
        description: 'Alignment description',
        route: RoutePaths.alignment),
    ListViewItem(
        title: 'Positioning',
        description: 'Positioning description',
        route: RoutePaths.positioning),
    ListViewItem(
        title: 'Visibility',
        description: 'Visibility description',
        route: RoutePaths.visibility),
    ListViewItem(
        title: 'Text', description: 'Text description', route: RoutePaths.text),
    ListViewItem(
        title: 'Borders',
        description: 'Borders description',
        route: RoutePaths.borders),
    ListViewItem(
        title: 'Effects',
        description: 'Effects description',
        route: RoutePaths.effects),
  ];

  String appBarTitle;

  UiManipulationView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      drawer: MainDrawer(),
      body: TappableListView(
        itemList: _itemList,
      ),
    );
  }
}
