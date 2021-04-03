import 'package:flutter/material.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

class AsyncWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
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

  String appBarTitle;

  AsyncWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      // drawer: MainDrawer(),
      body: TappableListView(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  AsyncWidgetsView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Demo'),
              ),
              Tab(
                child: Text('Code'),
              ),
            ],
          ),
        ),
        // drawer: MainDrawer(),
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            child: Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}
