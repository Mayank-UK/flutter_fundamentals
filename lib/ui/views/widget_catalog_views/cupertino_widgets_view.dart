import 'package:flutter/material.dart';

import '../../widgets/main_drawer.dart';
import '../../widgets/widget_info.dart';

class CupertinoWidgetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cupertino widgets'),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
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
        drawer: MainDrawer(),
        body: TabBarView(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Cupertino widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'CupertinoActionSheet',
                    description:
                        '-An iOS-style modal bottom action sheet to choose an option among many.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoActivityIndicator',
                    description:
                        '-An iOS-style activity indicator. Displays a circular \'spinner\'.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoAlertDialog',
                    description: '-An iOS-style alert dialog.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoButton',
                    description: '-An iOS-style button.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoContextMenu',
                    description:
                        '-An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoDatePicker',
                    description: '-An iOS-style date or date and time picker.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoDialog',
                    description: '-An iOS-style dialog.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoDialogAction',
                    description:
                        '-A button typically used in a CupertinoAlertDialog.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoFullScreenDialogTransition',
                    description:
                        '-An iOS-style transition used for summoning fullscreen dialogs.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoNavigationBar',
                    description:
                        '-An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoPageScaffold',
                    description:
                        '-Basic iOS style page layout structure. Positions a navigation bar and content on a background.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoPageTransition',
                    description:
                        '-Provides an iOS-style page transition animation.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoPicker',
                    description:
                        '-An iOS-style picker control. Used to select an item in a short list.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoPopupSurface',
                    description:
                        '-Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoScrollbar',
                    description:
                        '-An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSearchTextField',
                    description: '-An iOS-style search field.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSegmentedControl',
                    description:
                        '-An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSlider',
                    description: '-Used to select from a range of values.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSlidingSegmentedControl',
                    description:
                        '-An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSliverNavigationBar',
                    description:
                        '-An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoSwitch',
                    description:
                        '-An iOS-style switch. Used to toggle the on/off state of a single setting.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoTabBar',
                    description:
                        '-An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoTabScaffold',
                    description:
                        '-Tabbed iOS app structure. Positions a tab bar on top of tabs of content.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoTabView',
                    description:
                        '-Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoTextField',
                    description: '-An iOS-style text field.',
                  ),
                  WidgetInfo(
                    title: 'CupertinoTimePicker',
                    description: '-An iOS-style countdown timer picker.',
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
  }
}
