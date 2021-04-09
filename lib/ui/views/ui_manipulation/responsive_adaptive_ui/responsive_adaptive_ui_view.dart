import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_listview_component.dart';
import '../../../../core/router/router.dart';

class ResponsiveAdaptiveView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Responsive UI',
      description: 'UI gets adjusted to most of the screen sizes.',
      route: RoutePaths.responsiveUi,
    ),
    ListViewItem(
      title: 'Adaptive UI',
      description:
          'UI adapts according to the user\'s operating system like android and ios.',
      route: RoutePaths.adaptiveUi,
    ),
  ];

  String appBarTitle = 'Layout';

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
