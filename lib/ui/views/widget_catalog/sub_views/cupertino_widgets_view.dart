import 'package:flutter/material.dart';

import './../../../../core/router/router.dart';
import './../../../widgets/custom_listview.dart';

import '../../../widgets/main_drawer.dart';
import '../../../widgets/widget_info.dart';
import './../../../widgets/code_preview.dart';

class CupertinoWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'CupertinoActionSheet',
      description:
          'An iOS-style modal bottom action sheet to choose an option among many.',
      route: RoutePaths.cupertinoActionSheet,
    ),
    ListViewItem(
      title: 'CupertinoActivityIndicator',
      description:
          'An iOS-style activity indicator. Displays a circular \'spinner\'.',
      route: RoutePaths.cupertinoActivityIndicator,
    ),
    ListViewItem(
      title: 'CupertinoAlertDialog',
      description: 'An iOS-style alert dialog.',
      route: RoutePaths.cupertinoAlertDialog,
    ),
    ListViewItem(
      title: 'CupertinoButton',
      description: 'An iOS-style button.',
      route: RoutePaths.cupertinoButton,
    ),
    ListViewItem(
      title: 'CupertinoContextMenu',
      description:
          'An iOS-style full-screen modal route that opens when the child is long-pressed. Used to display relevant actions for your content.',
      route: RoutePaths.cupertinoContextMenu,
    ),
    ListViewItem(
      title: 'CupertinoDatePicker',
      description: 'An iOS-style date or date and time picker.',
      route: RoutePaths.cupertinoDatePicker,
    ),
    ListViewItem(
      title: 'CupertinoDialog',
      description: 'An iOS-style dialog.',
      route: RoutePaths.cupertinoDialog,
    ),
    ListViewItem(
      title: 'CupertinoDialogAction',
      description: 'A button typically used in a CupertinoAlertDialog.',
      route: RoutePaths.cupertinoDialogAction,
    ),
    ListViewItem(
      title: 'CupertinoFullscreenDialogTransition',
      description:
          'An iOS-style transition used for summoning fullscreen dialogs.',
      route: RoutePaths.cupertinoFullScreenDialogTransition,
    ),
    ListViewItem(
      title: 'CupertinoNavigationBar',
      description:
          'An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.',
      route: RoutePaths.cupertinoNavigationBar,
    ),
    ListViewItem(
      title: 'CupertinoScaffold',
      description:
          'Basic iOS style page layout structure. Positions a navigation bar and content on a background.',
      route: RoutePaths.cupertinoScaffold,
    ),
    ListViewItem(
      title: 'CupertinoPageTransition',
      description: 'Provides an iOS-style page transition animation.',
      route: RoutePaths.cupertinoPageTransition,
    ),
    ListViewItem(
      title: 'CupertinoPicker',
      description:
          'An iOS-style picker control. Used to select an item in a short list.',
      route: RoutePaths.cupertinoPicker,
    ),
    ListViewItem(
      title: 'CupertinoPopupSurface',
      description:
          'Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.',
      route: RoutePaths.cupertinoPopupSurface,
    ),
    ListViewItem(
        title: 'CupertinoScrollbar',
        description:
            'An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.',
        route: RoutePaths.cupertinoScrollbar),
    ListViewItem(
      title: 'CupertinoSearchField',
      description: 'An iOS-style search field.',
      route: RoutePaths.cupertinoSearchField,
    ),
    ListViewItem(
      title: 'CupertinoSegmentedControl',
      description:
          'An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.',
      route: RoutePaths.cupertinoSegmentedControl,
    ),
    ListViewItem(
      title: 'CupertinoSlider',
      description: 'Used to select from a range of values.',
      route: RoutePaths.cupertinoSlider,
    ),
    ListViewItem(
        title: 'CupertinoSlidingSegmentedControl',
        description:
            'An iOS-13-style segmented control. Used to select mutually exclusive options in a horizontal list.',
        route: RoutePaths.cupertinoSlidingSegmentedControl),
    ListViewItem(
      title: 'CupertinoSliverNavigationBar',
      description:
          'An iOS-styled navigation bar with iOS-11-style large titles using slivers.',
      route: RoutePaths.cupertinoSliverNavigationBar,
    ),
    ListViewItem(
      title: 'CupertinoSwitch',
      description:
          'An iOS-style switch. Used to toggle the on/off state of a single setting.',
      route: RoutePaths.cupertinoSwitch,
    ),
    ListViewItem(
      title: 'CupertinoTabBar',
      description:
          'An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold.',
      route: RoutePaths.cupertinoTabBar,
    ),
    ListViewItem(
      title: 'CupertinoTabScaffold',
      description:
          'Tabbed iOS app structure. Positions a tab bar on top of tabs of content.',
      route: RoutePaths.cupertinoTabScaffold,
    ),
    ListViewItem(
      title: 'CupertinoTabView',
      description:
          'Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.',
      route: RoutePaths.cupertinoTabView,
    ),
    ListViewItem(
      title: 'CupertinoTextField',
      description: 'An iOS-style text field.',
      route: RoutePaths.cupertinoTextField,
    ),
    ListViewItem(
      title: 'CupertinoTimePicker',
      description: 'An iOS-style countdown timer picker.',
      route: RoutePaths.cupertinoTimePicker,
    ),
  ];

  String appBarTitle;

  CupertinoWidgetsView({@required this.appBarTitle});

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

  CupertinoWidgetsView({@required this.appBarTitle});

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
  } */
}

class CupertinoActionSheetWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoActionSheetWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoActivityIndicatorWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoAlertDialogWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoAlertDialogWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoButtonWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoButtonWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoContextMenuWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoContextMenuWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoDatePickerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoDatePickerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoDialogWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoDialogWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoDialogActionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoDialogActionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoDialogFullScreenDialogTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoDialogFullScreenDialogTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoNavigationBarWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoNavigationBarWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoScaffoldWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoScaffoldWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoPageTransitionWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoPageTransitionWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoPickerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoPickerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoPopupSurfaceWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoScrollbarWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoScrollbarWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSearchFieldWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSearchFieldWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSegmentedControlWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSegmentedControlWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSliderWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSliderWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSlidingSegmentedControlWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSlidingSegmentedControlWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSliverNavigationBarWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSliverNavigationBarWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoSwitchWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoSwitchWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoTabBarWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoTabBarWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoTabScaffoldWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoTabScaffoldWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoTabViewWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoTabViewWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoTextFieldWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoTextFieldWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class CupertinoTimePickerWidget extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  CupertinoTimePickerWidget({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
