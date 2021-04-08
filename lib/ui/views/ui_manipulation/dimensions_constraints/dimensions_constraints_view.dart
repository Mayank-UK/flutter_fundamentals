import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import './../../../components/custom_listview_component.dart';
import './../../../../core/router/router.dart';

class DimesnionsContraintsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Fixed dimensions',
      description: 'Dimensions in fixed values.',
      route: RoutePaths.fixedDimensions,
    ),
    ListViewItem(
        title: 'Percentage dimensions',
        description: 'Dimensions in percentage to the parent.',
        route: RoutePaths.percentageDimensions),
    ListViewItem(
      title: 'Fractional full screen dimensions',
      description: 'Dimensions in fraction to the whole screen.',
      route: RoutePaths.fractionalDimensions,
    ),
    ListViewItem(
        title: 'Constraints',
        description: 'Dimensions in max/min.',
        route: RoutePaths.constraints),
  ];

  String appBarTitle = 'Dimensions and constraints';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this.appBarTitle),
      body: CustomListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
