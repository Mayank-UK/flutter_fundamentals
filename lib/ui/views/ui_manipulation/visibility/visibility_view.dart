import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import './../../../widgets/custom_listview.dart';
import './../../../../core/router/router.dart';

class VisibilityView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'In flow',
      description:
          'The widgets are still part of widget tree but do not render and still occupy space in the UI.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
        title: 'Out flow',
        description:
            'The widgets just get removed from the widget tree and do not occupy space in the UI.',
        route: RoutePaths.spacing),
  ];

  String appBarTitle;

  VisibilityView({@required this.appBarTitle});

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
