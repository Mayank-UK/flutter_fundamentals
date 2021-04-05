import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class DimesnionsContraintsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Height and max/min-height',
      description: 'Manipulating vertical length of a widget.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Width and max/min-width',
        description: 'Manipulating horizontal breath of a widget.',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  DimesnionsContraintsView({@required this.appBarTitle});

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
