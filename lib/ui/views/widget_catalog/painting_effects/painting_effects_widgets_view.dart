import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';

import '../../../../core/router/router.dart';
import '../../../widgets/custom_listview.dart';
import '../../../widgets/code_preview.dart';

class PaintingEffectsWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'BackdropFilter',
      description:
          'A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter is non-local, such as a blur.',
      route: RoutePaths.backDropFilter,
    ),
    ListViewItem(
      title: 'ClipOval',
      description: 'A widget that clips its child using an oval.',
      route: RoutePaths.clipOval,
    ),
    ListViewItem(
      title: 'ClipPath',
      description: 'A widget that clips its child using a path.',
      route: RoutePaths.clipPath,
    ),
    ListViewItem(
        title: 'ClipRect',
        description: 'A widget that clips its child using a rectangle.',
        route: RoutePaths.clipRect),
    ListViewItem(
      title: 'CustomPaint',
      description:
          'A widget that provides a canvas on which to draw during the paint phase.',
      route: RoutePaths.customPaint,
    ),
    ListViewItem(
      title: 'DecoratedBox',
      description:
          'A widget that paints a Decoration either before or after its child paints.',
      route: RoutePaths.decoratedBox,
    ),
    ListViewItem(
      title: 'FractionalTranslation',
      description:
          'A widget that applies a translation expressed as a fraction of the box\'s size before painting its child.',
      route: RoutePaths.fractionalTranslation,
    ),
    ListViewItem(
      title: 'Opacity',
      description: 'A widget that makes its child partially transparent.',
      route: RoutePaths.opacity,
    ),
    ListViewItem(
        title: 'RotatedBox',
        description:
            'A widget that rotates its child by a integral number of quarter turns.',
        route: RoutePaths.rotatedBox),
    ListViewItem(
      title: 'Transform',
      description:
          'A widget that applies a transformation before painting its child.',
      route: RoutePaths.transform,
    ),
  ];

  String appBarTitle = 'PaintingEffects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: CustomListView(
        itemList: _itemList,
      ),
    );
  }

  /* String appBarTitle;

  PaintingEffectsWidgetsView();

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
        
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Painting and effects widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'BackdropFilter',
                    description:
                        'A widget that applies a filter to the existing painted content and then paints a child. This effect is relatively expensive, especially if the filter is non-local, such as a blur.',
                  ),
                  WidgetInfo(
                    title: 'ClipOval',
                    description: 'A widget that clips its child using an oval.',
                  ),
                  Container(
                    height: 100,
                    child: ClipOval(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1523965671143-ac717f1cb928'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'ClipPath',
                    description: 'A widget that clips its child using a path.',
                  ),
                  Container(
                    height: 100,
                    child: MyClipPathWidget(),
                  ),
                  WidgetInfo(
                    title: 'ClipRect',
                    description:
                        'A widget that clips its child using a rectangle.',
                  ),
                  Container(
                    child: ClipRect(
                      child: Image.network(
                          'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'CustomPaint',
                    description:
                        'A widget that provides a canvas on which to draw during the paint phase.',
                  ),
                  WidgetInfo(
                    title: 'DecoratedBox',
                    description:
                        'A widget that paints a Decoration either before or after its child paints.',
                  ),
                  Container(
                    child: DecoratedBox(
                      position: DecorationPosition.background,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                          color: const Color(0xFF000000),
                          style: BorderStyle.solid,
                          width: 4.0,
                        ),
                        borderRadius: BorderRadius.zero,
                        shape: BoxShape.rectangle,
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Color(0x66000000),
                            blurRadius: 10.0,
                            spreadRadius: 4.0,
                          )
                        ],
                      ),
                      child: Container(
                        child: Container(
                          width: 200,
                          height: 200,
                          padding: EdgeInsets.all(20),
                          child: FlutterLogo(),
                        ),
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'FractionalTranslation',
                    description:
                        'A widget that applies a translation expressed as a fraction of the box\'s size before painting its child.',
                  ),
                  WidgetInfo(
                    title: 'Opacity',
                    description:
                        'A widget that makes its child partially transparent.',
                  ),
                  Container(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Opacity(
                          opacity: 0.1,
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.blue,
                          ),
                        ),

                        // const Text("Now you see me, now you don't!"),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'RotatedBox',
                    description:
                        'A widget that rotates its child by a integral number of quarter turns.',
                  ),
                  Container(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: const Text('Hello World!'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Transform',
                    description:
                        'A widget that applies a transformation before painting its child.',
                  ),
                  Container(
                    child: Transform(
                      alignment: Alignment.topRight,
                      transform: Matrix4.skewY(0.3)..rotateZ(12.0),
                      child: Container(
                        color: const Color(0xFFE8581C),
                        height: 50,
                        padding: const EdgeInsets.all(8.0),
                        width: 100,
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

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

class MyClipPathWidgetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClipper(),
      child: Image.network(
          "https://images.unsplash.com/photo-1513775192371-1b9d33760c3f"),
    );
  }
}
