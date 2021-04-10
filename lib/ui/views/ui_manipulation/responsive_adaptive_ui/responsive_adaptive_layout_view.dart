import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/custom_final_stage_listview_component.dart';
import '../../../../core/router/routes.dart';

class ResponsiveAdaptiveLayoutView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Responsive layout',
      description: 'Layout gets adjusted according to the user\'s screen size.',
      route: RoutePaths.responsiveUi,
    ),
    ListViewItem(
      title: 'Adaptive layout',
      description:
          'Layout adapts according to the user\'s operating system like android or ios.',
      route: RoutePaths.adaptiveUi,
    ),
  ];

  final String _appBarTitle = 'Responsive and adaptive layout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
