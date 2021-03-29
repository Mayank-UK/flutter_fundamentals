import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../../router.dart';
import 'accessibility_widgets_view.dart';
import 'animation_widgets_view.dart';
import 'asset_widgets_view.dart';
import 'async_widgets_view.dart';
import 'cupertino_widgets_view.dart';
import 'input_widgets_view.dart';
import 'interactive_widgets_view.dart';
import 'layout_widgets_view.dart';
import 'material_widgets_view.dart';
import 'painting_and_effects_widgets_view.dart';
import 'scrolling_widgets_view.dart';
import 'styling_widgets_view.dart';
import 'text_widgets_view.dart';

class WidgetCatalogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets catalog'),
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
}
