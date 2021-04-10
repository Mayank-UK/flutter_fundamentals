import 'package:flutter/material.dart';

import '../../../../core/router/routes.dart';
import '../../../components/custom_final_stage_listview_component.dart';
import '../../../components/main_appbar_component.dart';

class AsyncWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'FutureBuilder',
        description:
            'Widget that builds itself based on the latest snapshot of interaction with a Future.',
        route: RoutePaths.futureBuilder),
    ListViewItem(
      title: 'StreamBuilder',
      description:
          'Widget that builds itself based on the latest snapshot of interaction with a Stream.',
      route: RoutePaths.streamBuilder,
    ),
  ];

  final String _appBarTitle = 'Async';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }

  /* final String _appBarTitle;

  AsyncWidgetsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: const Text('Demo'),
              ),
              Tab(
                child: const Text('Code'),
              ),
            ],
          ),
        ),
        
        body: TabBarView(children: <Widget> [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    child: Text(
                      'Async widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'FutureBuilder',
                    description:
                        '-Widget that builds itself based on the latest snapshot of interaction with a Future.',
                  ),
                  WidgetInfo(
                    title: 'StreamBuilder',
                    description:
                        '-Widget that builds itself based on the latest snapshot of interaction with a Stream.',
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: const Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}
