import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class AlignmentView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Title',
      description: 'Description',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Title', description: 'Description', route: RoutePaths.spacing),
    ListViewItem(
        title: 'Title', description: 'Description', route: RoutePaths.spacing),
  ];

  String appBarTitle;

  AlignmentView({@required this.appBarTitle});

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
