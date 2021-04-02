import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../../core/router/router.dart';
import '../../widgets/custom_gridview.dart';

/* class WidgetCatalogView extends StatelessWidget {
  String appBarTitle;

  WidgetCatalogView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
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
  List<GridViewItem> _gridList = [
    GridViewItem(
        title: 'Accessibility', route: RoutePaths.accessibilityWidgets),
    GridViewItem(
        title: 'Animations and motion',
        route: RoutePaths.animationMotionWidgets),
    GridViewItem(
        title: 'Assets, icons and images', route: RoutePaths.assetWidgets),
    GridViewItem(title: 'Async', route: RoutePaths.asyncWidgets),
    GridViewItem(title: 'Cupertino', route: RoutePaths.cupertinoWidgets),
    GridViewItem(title: 'Input', route: RoutePaths.inputWidgets),
    GridViewItem(title: 'Interactive', route: RoutePaths.interactiveWidgets),
    GridViewItem(title: 'Layout', route: RoutePaths.layoutWidgets),
    GridViewItem(title: 'Material', route: RoutePaths.materialWidgets),
    GridViewItem(
        title: 'Painting and effects', route: RoutePaths.paintingEffectWidgets),
    GridViewItem(title: 'Scrolling', route: RoutePaths.scrollingWidgets),
    GridViewItem(title: 'Styling', route: RoutePaths.stylingWidgets),
    GridViewItem(title: 'Text', route: RoutePaths.textWidgets),
  ];

  String appBarTitle;

  WidgetCatalogView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.appBarTitle),
      ),
      // drawer: MainDrawer(),
      body: TappableGridView(
        gridList: _gridList,
        hasPushReplacement: false,
      ),
    );
  }
}
