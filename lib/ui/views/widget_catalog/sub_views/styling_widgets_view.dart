import 'package:flutter/material.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

class StylingWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'MediaQuery',
      description:
          'Establishes a subtree in which media queries resolve to the given data.',
      route: RoutePaths.mediaQuery,
    ),
    ListViewItem(
      title: 'Padding',
      description: 'A widget that insets its child by the given padding.',
      route: RoutePaths.paddingStyling,
    ),
    ListViewItem(
      title: 'Theme',
      description:
          'Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
      route: RoutePaths.theme,
    ),
  ];

  String appBarTitle;

  StylingWidgetsView({@required this.appBarTitle});

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

  StylingWidgetsView({@required this.appBarTitle});

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
                      'Styling widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'MediaQuery',
                    description:
                        '-Establishes a subtree in which media queries resolve to the given data.',
                  ),
                  Container(child: MyMediaQueryWidget()),
                  WidgetInfo(
                    title: 'Padding',
                    description:
                        '-A widget that insets its child by the given padding.',
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('This is text has padding.'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Theme',
                    description:
                        '-Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.',
                  ),
                  Container(
                    child: Theme(
                      // Create a unique theme with "ThemeData"
                      data: ThemeData(
                        accentColor: Colors.yellow,
                      ),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.add),
                      ),
                    ),
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

class MyMediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    print('size: ${deviceInfo.size}');
    print('padding: ${deviceInfo.padding}');

    return Container(
      child: Text('size: ${deviceInfo.size}\npadding: ${deviceInfo.padding}'),
    );
  }
}
