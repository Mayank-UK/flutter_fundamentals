import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../../core/router/routes.dart';
// import '../../components/custom_gridview_component.dart';
import '../../components/custom_mid_stage_listview_component.dart';

/* class WidgetCatalogView extends StatelessWidget {
  final String _appBarTitle;

  WidgetCatalogView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      drawer: MainDrawer(),
      body: GridView.count(
        // without this property, GridView is not visible
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.accessibilityWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Accessibility"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(RoutePaths.animationMotionWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Animation and motion"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.assetWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Assets, icons and images"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.asyncWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Async"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.cupertinoWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Cupertino"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.inputWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Input"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.interactiveWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Interactive"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.layoutWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Layout"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.materialWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Material"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.paintingEffectWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Painting and effects"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.scrollingWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Scrolling"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.stylingWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Styling"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RoutePaths.textWidgets);
            },
            child: Ink(
              color: Colors.teal[300],
              height: 200,
              padding: EdgeInsets.all(8),
              width: 200,
              child: const Text("Text"),
            ),
          ),
        ],
      ),
    );
  }
} */

class WidgetCatalogView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
        title: 'Accessibility',
        description: 'Description not available',
        route: RoutePaths.accessibilityWidgets),
    ListViewItem(
        title: 'Animations and motion',
        description: 'Description not available',
        route: RoutePaths.animationMotionWidgets),
    ListViewItem(
        title: 'Assets, icons and images',
        description: 'Description not available',
        route: RoutePaths.assetWidgets),
    ListViewItem(
        title: 'Async',
        description: 'Description not available',
        route: RoutePaths.asyncWidgets),
    ListViewItem(
        title: 'Cupertino',
        description: 'Description not available',
        route: RoutePaths.cupertinoWidgets),
    ListViewItem(
        title: 'Input',
        description: 'Description not available',
        route: RoutePaths.inputWidgets),
    ListViewItem(
        title: 'Interactive',
        description: 'Description not available',
        route: RoutePaths.interactiveWidgets),
    ListViewItem(
        title: 'Layout',
        description: 'Description not available',
        route: RoutePaths.layoutWidgets),
    ListViewItem(
        title: 'Material',
        description: 'Description not available',
        route: RoutePaths.materialWidgets),
    ListViewItem(
        title: 'Painting and effects',
        description: 'Description not available',
        route: RoutePaths.paintingEffectWidgets),
    ListViewItem(
        title: 'Scrolling',
        description: 'Description not available',
        route: RoutePaths.scrollingWidgets),
    ListViewItem(
        title: 'Styling',
        description: 'Description not available',
        route: RoutePaths.stylingWidgets),
    ListViewItem(
        title: 'Text',
        description: 'Description not available',
        route: RoutePaths.textWidgets),
  ];

  final String _appBarTitle = 'Widget catalog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomMidStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }
}
