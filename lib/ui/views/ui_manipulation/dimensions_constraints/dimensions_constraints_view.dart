import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class DimesnionsContraintsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Height and max/min-height',
      description: 'Manipulating vertical length of a widget.',
      route: RoutePaths.heightWidth,
    ),
    ListViewItem(
      title: 'Width and max/min-width',
      description: 'Manipulating horizontal breath of a widget.',
      route: RoutePaths.constraints,
    ),
  ];

  String appBarTitle = 'Dimensions and constraints';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: CustomListView(
        itemList: _itemList,
      ),
    );
  }
}
