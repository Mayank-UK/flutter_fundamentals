import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/widget_info.dart';

class AsyncWidgetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Async widgets'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
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
        drawer: MainDrawer(),
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
  }
}
