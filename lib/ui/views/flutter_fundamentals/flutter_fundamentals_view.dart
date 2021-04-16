import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import './../../components/custom_final_stage_listview_component.dart';
import './../../../core/router/routes.dart';

class FlutterFundamentalsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Important concepts',
      description: 'About flutter and it\'s it main concepts.',
      route: RoutePaths.importantConceptsFlutter,
    ),
    ListViewItem(
      title: 'Installation and setup',
      description:
          'Installing and setting up the flutter development environment.',
      route: RoutePaths.installationSetup,
    ),
    ListViewItem(
      title: 'Using flutter',
      description: 'Setting up a flutter project and doing the development.',
      route: RoutePaths.usingFlutter,
    ),
    ListViewItem(
      title: 'About widgets',
      description: 'General information and concepts about widgets.',
      route: RoutePaths.aboutWidgets,
    ),
    /* ListViewItem(
      title: 'Flutter 2.0',
      description:
          'Latest release of flutter\'s biggest update with web and desktop support.',
      route: RoutePaths.flutter2,
    ), */
  ];

  final String _appBarTitle = 'Flutter fundamentals';

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
