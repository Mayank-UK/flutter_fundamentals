import 'package:flutter/material.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

class LayoutWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'Align',
      description:
          'A widget that aligns its child within itself and optionally sizes itself based on the child\'s size.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'AspectRatio',
      description:
          'A widget that attempts to size the child to a specific aspect ratio.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Baseline',
      description:
          'A widget that positions its child according to the child\'s baseline.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Center',
      description: 'A widget that centers its child within itself.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'ConstrainedBox',
      description: 'A widget that imposes additional constraints on its child.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Container',
      description:
          'A convenience widget that combines common painting, positioning, and sizing widgets.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'CustomSingleChildLayout',
      description:
          'A widget that defers the layout of its single child to a delegate.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Expanded',
      description: 'A widget that expands a child of a Row, Column, or Flex.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'FittedBox',
      description:
          'Scales and positions its child within itself according to fit.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'FractionallySizedBox',
      description:
          'A widget that sizes its child to a fraction of the total available space. For more details about the layout algorithm, see RenderFractionallySizedOverflowBox.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'IntrinsicHeight',
      description:
          'A widget that sizes its child to the child\'s intrinsic height.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'IntrinsicWidth',
      description:
          'A widget that sizes its child to the child\'s intrinsic width.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'LimitedBox',
      description: 'A box that limits its size only when it\'s unconstrained.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Offstage',
      description:
          'A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'OverflowBox',
      description:
          'A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Padding',
      description: 'A widget that insets its child by the given padding.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'SizedBox',
      description:
          'A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height (assuming values are permitted by this widget\'s parent). If either the width or height is null, this widget will size itself to match the child\'s size in that dimension.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'SizedOverflowBox',
      description:
          'A widget that is a specific size but passes its original constraints through to its child, which will probably overflow.',
      route: RoutePaths.spacing,
    ),
    ListViewItem(
      title: 'Transform',
      description:
          'A widget that applies a transformation before painting its child.',
      route: RoutePaths.spacing,
    ),
  ];

  String appBarTitle;

  LayoutWidgetsView({@required this.appBarTitle});

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

  LayoutWidgetsView({@required this.appBarTitle});

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
                      'Layout widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Align',
                    description:
                        '-It can be substituted by container, as container is already having alignment property.',
                  ),
                  Container(
                    height: 120.0,
                    width: double.infinity,
                    color: Colors.blue[50],
                    child: Align(
                      alignment: Alignment.topRight,
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'AspectRatio',
                    description:
                        'A widget that attempts to size the child to a specific aspect ratio.',
                  ),
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 100.0,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Baseline',
                    description:
                        'A widget that positions its child according to the child\'s baseline.',
                  ),
                  Container(
                    color: Colors.teal,
                    height: 100,
                    width: double.infinity,
                    child: Baseline(
                      baseline: 0,
                      baselineType: TextBaseline.alphabetic,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Center',
                    description:
                        'A widget that centers its child within itself.',
                  ),
                  Center(
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  WidgetInfo(
                    title: 'ConstrainedBox',
                    description:
                        'A widget that imposes additional constraints on its child.',
                  ),
                  Container(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 50),
                      child: const Card(child: Text('Hello World!')),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Container',
                    description:
                        'A convenience widget that combines common painting, positioning, and sizing widgets.',
                  ),
                  Container(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black12,
                    ),
                  ),
                  WidgetInfo(
                    title: 'CustomSingleChildLayout',
                    description:
                        'A widget that defers the layout of its single child to a delegate.',
                  ),
                  WidgetInfo(
                    title: 'Expanded',
                    description:
                        'A widget that expands a child of a Row, Column, or Flex.',
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.red,
                            height: 100,
                            child: Text('This is expanded to all the space'),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'FittedBox',
                    description:
                        'Scales and positions its child within itself according to fit.',
                  ),
                  Container(
                    child: Container(
                      height: 400,
                      width: 300,
                      color: Colors.red,
                      child: FittedBox(
                        child: Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'FractionallySizedBox',
                    description:
                        'A widget that sizes its child to a fraction of the total available space. For more details about the layout algorithm, see RenderFractionallySizedOverflowBox.',
                  ),
                  Container(
                    child: FractionallySizedBox(
                      widthFactor: 0.5,
                      child: RaisedButton(
                        child: Text('Click'),
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'IntrinsicHeight',
                    description:
                        'A widget that sizes its child to the child\'s intrinsic height.',
                  ),
                  WidgetInfo(
                    title: 'IntrinsicWidth',
                    description:
                        'A widget that sizes its child to the child\'s intrinsic width.',
                  ),
                  WidgetInfo(
                    title: 'LimitedBox',
                    description:
                        'A box that limits its size only when it\'s unconstrained.',
                  ),
                  WidgetInfo(
                    title: 'OffStage',
                    description:
                        'A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.',
                  ),
                  Container(
                    child: MyOffstageWidget(),
                  ),
                  WidgetInfo(
                    title: 'OverflowBox',
                    description:
                        'A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.',
                  ),
                  Container(
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.black38,
                      child: OverflowBox(
                        maxWidth: 400,
                        child: SizedBox(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Color.fromARGB(100, 0, 128, 128),
                            child: Text('Overflowing',
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Padding',
                    description:
                        'A widget that insets its child by the given padding.',
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('This text has padding of 16'),
                    ),
                  ),
                  WidgetInfo(
                    title: 'SizedBox',
                    description:
                        'A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height (assuming values are permitted by this widget\'s parent). If either the width or height is null, this widget will size itself to match the child\'s size in that dimension.',
                  ),
                  Container(
                    child: SizedBox(
                      width: 200.0,
                      height: 300.0,
                      child: const Card(child: Text('Hello World!')),
                    ),
                  ),
                  WidgetInfo(
                    title: 'SizedOverflowBox',
                    description:
                        'A widget that is a specific size but passes its original constraints through to its child, which will probably overflow.',
                  ),
                  Container(
                    child: Container(
                      color: Colors.grey,
                      child: SizedOverflowBox(
                        size: const Size(100, 100),
                        child: Container(
                            height: 50.0, width: 150.0, color: Colors.teal),
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Transform',
                    description:
                        'A widget that applies a transformation before painting its child.',
                  ),
                  Container(
                    child: Container(
                      color: Colors.black,
                      child: Transform(
                        alignment: Alignment.topRight,
                        transform: Matrix4.skewY(0.3)..rotateZ(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          color: const Color(0xFFE8581C),
                          child: const Text('Apartment for rent!'),
                        ),
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Column',
                    description:
                        'Layout a list of child widgets in the vertical direction.',
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.red,
                          height: 100,
                          margin: EdgeInsets.all(8),
                          width: 100,
                        ),
                        Container(
                          color: Colors.red,
                          height: 100,
                          margin: EdgeInsets.all(8),
                          width: 100,
                        )
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'CustomMultiChildLayout',
                    description:
                        'A widget that uses a delegate to size and position multiple children.',
                  ),
                  WidgetInfo(
                    title: 'Flow',
                    description:
                        'A widget that implements the flow layout algorithm.',
                  ),
                  WidgetInfo(
                    title: 'GridView',
                    description:
                        'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
                  ),
                  Container(
                    child: GridView.count(
                      // without this property, GridView is not visible
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text("He'd have you all unravel at the"),
                          color: Colors.teal[100],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Heed not the rabble'),
                          color: Colors.teal[200],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Sound of screams but the'),
                          color: Colors.teal[300],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Who scream'),
                          color: Colors.teal[400],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution is coming...'),
                          color: Colors.teal[500],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text('Revolution, they...'),
                          color: Colors.teal[600],
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'IndexedStack',
                    description:
                        'A Stack that shows a single child from a list of children.',
                  ),
                  Container(
                    child: MyIndexedStack(),
                  ),
                  WidgetInfo(
                    title: 'LayoutBuilder',
                    description:
                        'Builds a widget tree that can depend on the parent widget\'s size.',
                  ),
                  Container(
                    child: MyLayoutBuilder(),
                  ),
                  WidgetInfo(
                    title: 'ListBody',
                    description:
                        'A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.',
                  ),
                  WidgetInfo(
                    title: 'ListView',
                    description:
                        'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.',
                  ),
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.amber[600],
                          child: const Center(child: Text('Entry A')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[500],
                          child: const Center(child: Text('Entry B')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[100],
                          child: const Center(child: Text('Entry C')),
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Row',
                    description:
                        'Layout a list of child widgets in the horizontal direction.',
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('Deliver features faster',
                              textAlign: TextAlign.center),
                        ),
                        Expanded(
                          child: Text('Craft beautiful UIs',
                              textAlign: TextAlign.center),
                        ),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit
                                .contain, // otherwise the logo will be tiny
                            child: const FlutterLogo(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Stack',
                    description:
                        'This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom.',
                  ),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.green,
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Table',
                    description:
                        'A widget that uses the table layout algorithm for its children.',
                  ),
                  Container(
                    child: Table(
                      border: TableBorder.all(),
                      columnWidths: const <int, TableColumnWidth>{
                        0: IntrinsicColumnWidth(),
                        1: FlexColumnWidth(),
                        2: FixedColumnWidth(64),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[
                            Container(
                              height: 32,
                              color: Colors.green,
                            ),
                            TableCell(
                              verticalAlignment: TableCellVerticalAlignment.top,
                              child: Container(
                                height: 32,
                                width: 32,
                                color: Colors.red,
                              ),
                            ),
                            Container(
                              height: 64,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                          children: <Widget>[
                            Container(
                              height: 64,
                              width: 128,
                              color: Colors.purple,
                            ),
                            Container(
                              height: 32,
                              color: Colors.yellow,
                            ),
                            Center(
                              child: Container(
                                height: 32,
                                width: 32,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'Wrap',
                    description:
                        'A widget that displays its children in multiple horizontal or vertical runs.',
                  ),
                  Container(
                    child: Wrap(
                      spacing: 8.0, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      children: <Widget>[
                        Chip(
                          avatar: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: Text('AH')),
                          label: Text('Hamilton'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: Text('ML')),
                          label: Text('Lafayette'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: Text('HM')),
                          label: Text('Mulligan'),
                        ),
                        Chip(
                          avatar: CircleAvatar(
                              backgroundColor: Colors.blue.shade900,
                              child: Text('JL')),
                          label: Text('Laurens'),
                        ),
                      ],
                    ),
                  ),
                  WidgetInfo(
                    title: 'CupertinoNavigationBar',
                    description:
                        'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
                  ),
                  WidgetInfo(
                    title: 'CustomScrollView',
                    description:
                        'A ScrollView that creates custom scroll effects using slivers.',
                  ),
                  WidgetInfo(
                    title: 'SliverAppBar',
                    description:
                        'A material design app bar that integrates with a CustomScrollView.',
                  ),
                  WidgetInfo(
                    title: 'SliverChildBuilderDelegate',
                    description:
                        'A delegate that supplies children for slivers using a builder callback.',
                  ),
                  WidgetInfo(
                    title: 'SliverChildListDelegate',
                    description:
                        'A delegate that supplies children for slivers using an explicit list.',
                  ),
                  WidgetInfo(
                    title: 'SliverFixedExtentList',
                    description:
                        'A sliver that places multiple box children with the same main axis extent in a linear array.',
                  ),
                  WidgetInfo(
                    title: 'SliverGrid',
                    description:
                        'A sliver that places multiple box children in a two dimensional arrangement.',
                  ),
                  WidgetInfo(
                    title: 'SliverList',
                    description:
                        'A sliver that places multiple box children in a linear array along the main axis.',
                  ),
                  WidgetInfo(
                    title: 'SliverPadding',
                    description:
                        'A sliver that applies padding on each side of another sliver.',
                  ),
                  WidgetInfo(
                    title: 'SliverPersistentHeader',
                    description:
                        'A sliver whose size varies when the sliver is scrolled to the edge of the viewport opposite the sliver\'s GrowthDirection.',
                  ),
                  WidgetInfo(
                    title: 'SliverToBoxAdaptor',
                    description: 'A sliver that contains a single box widget.',
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

class MyOffstageWidget extends StatefulWidget {
  @override
  _MyOffstageState createState() => _MyOffstageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyOffstageState extends State<MyOffstageWidget> {
  final GlobalKey _key = GlobalKey();
  bool _offstage = true;

  Size _getFlutterLogoSize() {
    final RenderBox renderLogo =
        _key.currentContext.findRenderObject() as RenderBox;
    return renderLogo.size;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Offstage(
          offstage: _offstage,
          child: FlutterLogo(
            key: _key,
            size: 150.0,
          ),
        ),
        Text('Flutter logo is offstage: $_offstage'),
        ElevatedButton(
          child: const Text('Toggle Offstage Value'),
          onPressed: () {
            setState(() {
              _offstage = !_offstage;
            });
          },
        ),
        if (_offstage)
          ElevatedButton(
              child: const Text('Get Flutter Logo size'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text('Flutter Logo size is ${_getFlutterLogoSize()}'),
                  ),
                );
              }),
      ],
    );
  }
}

class MyIndexedStack extends StatefulWidget {
  @override
  _MyIndexedStackState createState() => _MyIndexedStackState();
}

class _MyIndexedStackState extends State<MyIndexedStack> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: IndexedStack(
            index: _index,
            children: <Widget>[
              Container(
                color: Colors.pink,
                child: Center(
                  child: Text('Page 1'),
                ),
              ),
              Container(
                color: Colors.cyan,
                child: Center(
                  child: Text('Page 2'),
                ),
              ),
              Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Text('Page 3'),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                if (_index <= 0) return;
                setState(() {
                  _index -= 1;
                });
              },
              child: Text(
                "Prev",
              ),
            ),
            TextButton(
              onPressed: () {
                if (_index >= 2) return;
                setState(() {
                  _index += 1;
                });
              },
              child: Text(
                "Next",
              ),
            )
          ],
        )
      ],
    );
  }
}

class MyLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainers();
        } else {
          return _buildNormalContainer();
        }
      },
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
