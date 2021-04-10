import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';

import '../../../../core/router/routes.dart';
import '../../../components/custom_final_stage_listview_component.dart';

class StylingWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
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

  final String _appBarTitle = 'Styling widgets';

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

  StylingWidgetsView();

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
                      child: const Text('This is text has padding.'),
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
            child: const Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}

class MyMediaQueryWidgetView extends StatelessWidget {
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
