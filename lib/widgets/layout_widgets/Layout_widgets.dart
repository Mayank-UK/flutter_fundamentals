import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            'Layout widgets',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 16,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Align'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-It can be substituted by container, as container is already having alignment property'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Container(
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
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AspectRatio'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Container(
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
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Baseline'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Container(
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
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Center'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Center(
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ConstrainedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This widget apply min or max values on dimensions, container widget also has constraint property'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 50),
                  child: const Card(child: Text('Hello World!')),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Container'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This widget is the most used widget to encapsulate, as it has a lot of properties out of the box like height, width, color, constraints, alignment, etc'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CustomSingleChildLayout'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-The point of this widget is allowing you to layout the children you pass to this widget in a single function, i.e. their positions and sizes can depend on each other, which is something you cannot achieve using e.g. the prebuilt Stack widget.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Expanded'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This widget expands the child of column, row or flex, so that child takes all the available space.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FittedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Scales and positions its child within itself according to fit.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FractionallySizedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that sizes its child to a fraction of the total available space.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('IntrinsicHeight'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This class is useful, for example, when unlimited height is available and you would like a child that would otherwise attempt to expand infinitely to instead size itself to a more reasonable height.\n -This widget is expensive, avoid using it where possible.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('IntrinsicWidth'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This class is useful, for example, when unlimited width is available and you would like a child that would otherwise attempt to expand infinitely to instead size itself to a more reasonable width.\n -This widget is expensive, avoid using it where possible.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LimitedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A box that limits its size only when it\'s unconstrained.\n -If this widget\'s maximum width is unconstrained then its child\'s width is limited to maxWidth. Similarly, if this widget\'s maximum height is unconstrained then its child\'s height is limited to maxHeight.\n -It can be substituted with different constrained widgets like container, constraintBox'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Offstage'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: MyOffstageWidget(),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OverflowBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Padding'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that insets its child by the given padding. Prefer using container as it has many more advantages.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('This text has padding of 16'),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SizedBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A box with a specified size. Prefer using container as it has many more features.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                  child: SizedBox(
                    width: 200.0,
                    height: 300.0,
                    child: const Card(child: Text('Hello World!')),
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SizedOverflowBox'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that is a specific size but passes its original constraints through to its child, which may then overflow.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Container(
                  color: Colors.grey,
                  child: SizedOverflowBox(
                    size: const Size(100, 100),
                    child: Container(
                        height: 50.0, width: 150.0, color: Colors.teal),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Transform'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that applies a transformation before painting its child.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Column'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that displays its children in a vertical array.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CustomMultiChildLayout'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-This widget is useful at advance level, leave it for now.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Flow'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that sizes and positions children efficiently, according to the logic in a FlowDelegate.\n -This is an advanced widget, leave it for now'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('GridView'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A scrollable, 2D array of widgets.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('IndexedStack'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A Stack that shows a single child from a list of children.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: MyIndexedStack(),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('LayoutBuilder'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-Builds a widget tree that can depend on the parent widget\'s size.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: MyLayoutBuilder(),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ListBody'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.\n -This widget is rarely used directly instead use ListView'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ListView'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A scrollable list of widgets arranged linearly.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Row'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that displays its children in a horizontal array.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
                          fit:
                              BoxFit.contain, // otherwise the logo will be tiny
                          child: const FlutterLogo(),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stack'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that positions its children relative to the edges of its box.'),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Table'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that uses the table layout algorithm for its children.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(64),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Wrap'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A widget that displays its children in multiple horizontal or vertical runs.'),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
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
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CupertinoSliverNavigationBar'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-An iOS-styled navigation bar with iOS-11-style large titles using slivers.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('CustomScrollView'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A ScrollView that creates custom scroll effects using slivers.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverAppBar'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A material design app bar that integrates with a CustomScrollView.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverChildBuilderDelegate'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A delegate that supplies children for slivers using a builder callback.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverChildListDelegate'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A delegate that supplies children for slivers using an explicit list.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverFixedExtentList'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A sliver that places multiple box children with the same main axis extent in a linear array.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverGrid'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A sliver that places multiple box children in a two dimensional arrangement.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverList'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A sliver that places multiple box children in a linear array along the main axis.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverPadding'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A sliver that applies padding on each side of another sliver.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverPersistentHeader'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text(
                    '-A sliver whose size varies when the sliver is scrolled to the edge of the viewport opposite the sliver\'s GrowthDirection.'),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black12,
          margin: EdgeInsets.only(
            top: 8,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SliverToBoxAdapter'),
              Container(
                margin: EdgeInsets.only(top: 8, right: 8, bottom: 8, left: 16),
                child: Text('-A sliver that contains a single box widget.'),
              ),
            ],
          ),
        ),
      ],
    );
  }
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
