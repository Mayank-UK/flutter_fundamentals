import 'package:flutter/material.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';
import './../../../widgets/code_preview.dart';

class InteractiveWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'AbsorbPointer',
      description:
          'A widget that absorbs pointers during hit testing. When absorbing is true, this widget prevents its subtree from receiving pointer events by terminating hit testing at itself. It still consumes space during layout and paints its child as usual. It just prevents its children from being the target of located events, because it returns true from RenderBox.hitTest.',
      route: RoutePaths.absorbPointer,
    ),
    ListViewItem(
      title: 'Dismissible',
      description:
          'A widget that can be dismissed by dragging in the indicated direction. Dragging or flinging this widget in the DismissDirection causes the child to slide out of view. Following the slide animation, if resizeDuration is non-null, the Dismissible widget animates its height (or width, whichever is perpendicular to the dismiss direction) to zero over the resizeDuration.',
      route: RoutePaths.dismissible,
    ),
    ListViewItem(
      title: 'DragTarget',
      description:
          'A widget that receives data when a Draggable widget is dropped. When a draggable is dragged on top of a drag target, the drag target is asked whether it will accept the data the draggable is carrying. If the user does drop the draggable on top of the drag target (and the drag target has indicated that it will accept the draggable\'s data), then the drag target is asked to accept the draggable\'s data.',
      route: RoutePaths.dragTarget,
    ),
    ListViewItem(
      title: 'Draggable',
      description:
          'A widget that can be dragged from to a DragTarget. When a draggable widget recognizes the start of a drag gesture, it displays a feedback widget that tracks the user\'s finger across the screen. If the user lifts their finger while on top of a DragTarget, that target is given the opportunity to accept the data carried by the draggable.',
      route: RoutePaths.draggable,
    ),
    ListViewItem(
      title: 'DraggableScrollableSheet',
      description:
          'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
      route: RoutePaths.draggableScrollableSheet,
    ),
    ListViewItem(
      title: 'GestureDetector',
      description:
          'A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead.',
      route: RoutePaths.gestureDetector,
    ),
    ListViewItem(
      title: 'IgnorePointer',
      description:
          'A widget that is invisible during hit testing. When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes space during layout and paints its child as usual. It just cannot be the target of located events, because it returns false from RenderBox.hitTest.',
      route: RoutePaths.ignorePointer,
    ),
    ListViewItem(
        title: 'InteractiveViewer',
        description:
            'A widget that enables pan and zoom interactions with its child.',
        route: RoutePaths.interactiveViewer),
    ListViewItem(
      title: 'LongPressDraggable',
      description: 'Makes its child draggable starting from long press.',
      route: RoutePaths.longPressDraggable,
    ),
    ListViewItem(
      title: 'Scrollable',
      description:
          'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.',
      route: RoutePaths.scrollable,
    ),
    ListViewItem(
      title: 'Hero',
      description:
          'A widget that marks its child as being a candidate for hero animations.',
      route: RoutePaths.heroInteractive,
    ),
    ListViewItem(
      title: 'Navigator',
      description:
          'A widget that manages a set of child widgets with a stack discipline. Many apps have a navigator near the top of their widget hierarchy to display their logical history using an Overlay with the most recently visited pages visually on top of the older pages. Using this pattern lets the navigator visually transition from one page to another by moving the widgets around in the overlay. Similarly, the navigator can be used to show a dialog by positioning the dialog widget above the current page.',
      route: RoutePaths.navigator,
    ),
  ];

  String appBarTitle;

  InteractiveWidgetsView({@required this.appBarTitle});

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

  InteractiveWidgetsView({@required this.appBarTitle});

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
                      'Interactive widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'AbsorbPointer',
                    description:
                        '-A widget that absorbs pointers during hit testing. When absorbing is true, this widget prevents its subtree from receiving pointer events by terminating hit testing at itself. It still consumes space during layout and paints its child as usual. It just prevents its children from being the target of located events, because it returns true from RenderBox.hitTest.',
                  ),
                  Container(
                    child: MyAbsorbPointer(),
                  ),
                  WidgetInfo(
                    title: 'Dismissible',
                    description:
                        '-A widget that can be dismissed by dragging in the indicated direction. Dragging or flinging this widget in the DismissDirection causes the child to slide out of view. Following the slide animation, if resizeDuration is non-null, the Dismissible widget animates its height (or width, whichever is perpendicular to the dismiss direction) to zero over the resizeDuration.',
                  ),
                  Container(
                    child: MyDismissible(),
                  ),
                  WidgetInfo(
                    title: 'Draggable and DragTarget',
                    description:
                        '-A widget that receives data when a Draggable widget is dropped. When a draggable is dragged on top of a drag target, the drag target is asked whether it will accept the data the draggable is carrying. If the user does drop the draggable on top of the drag target (and the drag target has indicated that it will accept the draggable\'s data), then the drag target is asked to accept the draggable\'s data.',
                  ),
                  Container(
                    child: MyDraggable(),
                  ),
                  WidgetInfo(
                    title: 'DraggableScrollableSheet',
                    description:
                        '-A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
                  ),
                  WidgetInfo(
                    title: 'GestureDetector',
                    description:
                        '-A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead.',
                  ),
                  Container(
                    child: MyGestureDetector(),
                  ),
                  WidgetInfo(
                    title: 'IgnorePointer',
                    description:
                        '-A widget that is invisible during hit testing. When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes space during layout and paints its child as usual. It just cannot be the target of located events, because it returns false from RenderBox.hitTest.',
                  ),
                  Container(
                    child: MyIgnorePointer(),
                  ),
                  WidgetInfo(
                    title: 'InteractiveViewer',
                    description:
                        '-A widget that enables pan and zoom interactions with its child.',
                  ),
                  Container(
                    child: MyInteractiveViewer(),
                  ),
                  WidgetInfo(
                    title: 'LongPressDraggable',
                    description:
                        '-Makes its child draggable starting from long press.',
                  ),
                  Container(
                    child: MyLongPressDraggable(),
                  ),
                  WidgetInfo(
                    title: 'Scrollable',
                    description:
                        '-Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.',
                  ),
                  Container(
                    child: Text(
                        '-It is used to implement a scrollable widget, it is rarely used directly, instead use ListView or GridView.'),
                  ),
                  WidgetInfo(
                    title: 'Hero',
                    description:
                        '-It is a widget that marks it\'s child as a candidate for hero animation.',
                  ),
                  WidgetInfo(
                    title: 'Navigator',
                    description:
                        '-A widget that manages a set of child widgets with a stack discipline, it is an advanced widget and will be used in combination with other widgets.',
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

class MyAbsorbPointer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 100.0,
          child: ElevatedButton(
            onPressed: () {},
            child: null,
          ),
        ),
        SizedBox(
          width: 80.0,
          height: 80.0,
          child: AbsorbPointer(
            absorbing: true,
            child: Container(
              color: Colors.black12,
            ),
          ),
        ),
      ],
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyDismissible extends StatefulWidget {
  @override
  _MyDismissibleState createState() => _MyDismissibleState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyDismissibleState extends State<MyDismissible> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    // ListView do not work directly under column and row, use something with specified dimensions
    return Container(
      height: 400,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            child: ListTile(
              title: Text(
                'Item ${items[index]}',
              ),
            ),
            background: Container(
              color: Colors.green,
            ),
            key: UniqueKey(),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.remove(index);
              });
            },
          );
        },
      ),
    );
  }
}

class MyDraggable extends StatefulWidget {
  @override
  _MyDraggableState createState() => _MyDraggableState();
}

class _MyDraggableState extends State<MyDraggable> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Draggable<int>(
          // Data is the value this Draggable stores.
          data: 10,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.lightGreenAccent,
            child: Center(
              child: Text("Draggable"),
            ),
          ),
          feedback: Container(
            color: Colors.deepOrange,
            height: 100,
            width: 100,
            child: Icon(Icons.directions_run),
          ),
          childWhenDragging: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.pinkAccent,
            child: Center(
              child: Text("Child When Dragging"),
            ),
          ),
        ),
        DragTarget(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              height: 100.0,
              width: 100.0,
              color: Colors.cyan,
              child: Center(
                child: Text("Value is updated to: $acceptedData"),
              ),
            );
          },
          onAccept: (int data) {
            setState(() {
              acceptedData += data;
            });
          },
        ),
      ],
    );
  }
}

class MyGestureDetector extends StatefulWidget {
  @override
  _MyGestureDetectorState createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  var _lights = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.lightbulb_outline,
              color: _lights ? Colors.yellow.shade600 : Colors.black,
              size: 60,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _lights = true;
              });
            },
            child: Container(
              color: Colors.yellow.shade600,
              padding: const EdgeInsets.all(8),
              child: const Text('TURN LIGHTS ON'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyIgnorePointer extends StatefulWidget {
  @override
  _MyIgnorePointerState createState() => _MyIgnorePointerState();
}

class _MyIgnorePointerState extends State<MyIgnorePointer> {
  bool ignoring = false;
  void setIgnoring(bool newValue) {
    setState(() {
      ignoring = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // IgnorePointer is not visible to hit testing while AbsorbPointer is visible
      child: IgnorePointer(
        ignoring: ignoring,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Ignoring: $ignoring'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click me!'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyInteractiveViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 2,
        child: Container(
          color: Colors.black12,
          height: 100,
          width: 100,
          child: Text('ok'),
        ),
      ),
    );
  }
}

class MyLongPressDraggable extends StatefulWidget {
  @override
  _MyLongPressDraggableState createState() => _MyLongPressDraggableState();
}

class _MyLongPressDraggableState extends State<MyLongPressDraggable> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LongPressDraggable<int>(
          // Data is the value this Draggable stores.
          data: 10,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.lightGreenAccent,
            child: Center(
              child: Text("Draggable"),
            ),
          ),
          feedback: Container(
            color: Colors.deepOrange,
            height: 100,
            width: 100,
            child: Icon(Icons.directions_run),
          ),
          childWhenDragging: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.pinkAccent,
            child: Center(
              child: Text("Child When Dragging"),
            ),
          ),
        ),
        DragTarget(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              height: 100.0,
              width: 100.0,
              color: Colors.cyan,
              child: Center(
                child: Text("Value is updated to: $acceptedData"),
              ),
            );
          },
          onAccept: (int data) {
            setState(() {
              acceptedData += data;
            });
          },
        ),
      ],
    );
  }
}

class AbsorbPointerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  AbsorbPointerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class DismissibleWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DismissibleWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class DragTargetWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DragTargetWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class DraggableWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DraggableWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class DraggableScrollableSheetWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DraggableScrollableSheetWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class GestureDetectorWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  GestureDetectorWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class IgnorePointerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  IgnorePointerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class InteractiveViewerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  InteractiveViewerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class LongPressDraggableWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  LongPressDraggableWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class ScrollableWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  ScrollableWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class HeroInteractiveWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  HeroInteractiveWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class NavigatorWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  NavigatorWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
