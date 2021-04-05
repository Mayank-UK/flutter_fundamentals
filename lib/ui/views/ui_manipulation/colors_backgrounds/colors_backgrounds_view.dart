import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class ColorsBackgroundsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Color',
      description: 'Text color',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Background',
        description: 'Background color',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  ColorsBackgroundsView({@required this.appBarTitle});

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
