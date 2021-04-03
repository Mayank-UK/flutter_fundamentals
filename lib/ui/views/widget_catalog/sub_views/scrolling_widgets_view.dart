import 'package:flutter/material.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

class ScrollingWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'CustomScrollView',
      description:
          'A ScrollView that creates custom scroll effects using slivers.',
      route: RoutePaths.customScrollView,
    ),
    ListViewItem(
      title: 'DraggableScrollableSheet',
      description:
          'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
      route: RoutePaths.draggableScrollableSheetScrolling,
    ),
    ListViewItem(
        title: 'GridView',
        description:
            'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
        route: RoutePaths.gridViewScrolling),
    ListViewItem(
      title: 'ListView',
      description:
          'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.',
      route: RoutePaths.listView,
    ),
    ListViewItem(
      title: 'NestedScrollView',
      description:
          'A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.',
      route: RoutePaths.nestedScrollView,
    ),
    ListViewItem(
      title: 'NotificationListener',
      description:
          'A widget that listens for Notifications bubbling up the tree.',
      route: RoutePaths.notificationListener,
    ),
    ListViewItem(
      title: 'PageView',
      description: 'A scrollable list that works page by page.',
      route: RoutePaths.pageView,
    ),
    ListViewItem(
      title: 'RefreshIndicator',
      description: 'A Material Design pull-to-refresh wrapper for scrollables',
      route: RoutePaths.refreshIndicator,
    ),
    ListViewItem(
      title: 'ReorderableListView',
      description:
          'A list whose items the user can interactively reorder by dragging.',
      route: RoutePaths.reorderableListView,
    ),
    ListViewItem(
      title: 'ScrollConfiguration',
      description: 'Controls how Scrollable widgets behave in a subtree.',
      route: RoutePaths.scrollConfiguration,
    ),
    ListViewItem(
      title: 'Scrollable',
      description:
          'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.',
      route: RoutePaths.scrollable,
    ),
    ListViewItem(
      title: 'Scrollbar',
      description:
          'A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
      route: RoutePaths.scrollbar,
    ),
    ListViewItem(
      title: 'SingleChildScrollView',
      description:
          'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).',
      route: RoutePaths.singleChildScrollView,
    ),
  ];

  String appBarTitle;

  ScrollingWidgetsView({@required this.appBarTitle});

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

  ScrollingWidgetsView({@required this.appBarTitle});

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
                      'Scrolling widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'CustomScrollView',
                    description:
                        'A ScrollView that creates custom scroll effects using slivers.',
                  ),
                  WidgetInfo(
                    title: 'DraggableScrollableSheet',
                    description:
                        'A container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.',
                  ),
                  Container(
                    height: 200,
                    child: DraggableScrollableSheet(
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          color: Colors.white,
                          child: ListView.builder(
                              controller: scrollController,
                              itemCount: 20,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              }),
                        );
                      },
                    ),
                  ),
                  WidgetInfo(
                    title: 'GridView',
                    description:
                        'A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.',
                  ),
                  Container(
                    height: 200,
                    child: GridView.count(
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
                    title: 'ListView',
                    description:
                        'A scrollable, linear list of widgets. ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.',
                  ),
                  Container(
                    height: 120,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
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
                    title: 'NestedScrollView',
                    description:
                        'A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked.',
                  ),
                  WidgetInfo(
                    title: 'NotificationListener',
                    description:
                        'A widget that listens for Notifications bubbling up the tree.',
                  ),
                  WidgetInfo(
                    title: 'PageView',
                    description: 'A scrollable list that works page by page.',
                  ),
                  Container(
                    height: 200,
                    child: MyPageViewWidget(),
                  ),
                  WidgetInfo(
                    title: 'RefreshIndicator',
                    description:
                        'A Material Design pull-to-refresh wrapper for scrollables.',
                  ),
                  Container(
                    height: 120,
                    child: RefreshIndicator(
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
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
                      onRefresh: () {},
                    ),
                  ),
                  WidgetInfo(
                    title: 'ReorderableListView',
                    description:
                        'A list whose items the user can interactively reorder by dragging.',
                  ),
                  Container(
                    height: 200,
                    child: MyReorderableListViewWidget(),
                  ),
                  WidgetInfo(
                    title: 'ScrollConfiguration',
                    description:
                        'Controls how Scrollable widgets behave in a subtree.',
                  ),
                  WidgetInfo(
                    title: 'Scrollable',
                    description:
                        'Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.',
                  ),
                  WidgetInfo(
                    title: 'Scrollbar',
                    description:
                        'A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.',
                  ),
                  Container(
                    height: 120,
                    child: Scrollbar(
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
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
                  ),
                  WidgetInfo(
                    title: 'SingleChildScrollView',
                    description:
                        'A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).',
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

/// This is the stateless widget that the main application instantiates.
class MyPageViewWidget extends StatelessWidget {
  // const MyPageViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Center(
          child: Text('First Page(Slide right)'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}

class MyReorderableListViewWidget extends StatefulWidget {
  @override
  _MyReorderableListViewWidgetState createState() =>
      _MyReorderableListViewWidgetState();
}

class _MyReorderableListViewWidgetState
    extends State<MyReorderableListViewWidget> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return ReorderableListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: <Widget>[
        for (int index = 0; index < _items.length; index++)
          ListTile(
            key: Key('$index'),
            tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${_items[index]}'),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
