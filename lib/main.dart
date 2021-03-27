import 'package:flutter/material.dart';

import 'widgets/accessibility_widgets/Accessibility_widgets.dart';
import 'widgets/animation_widgets/Animation_widgets.dart';
import 'widgets/asset_widgets/Asset_widgets.dart';
import 'widgets/async_widgets/Async_widgets.dart';
import 'widgets/cupertino_widgets/Cupertino_widgets.dart';
import 'widgets/input_widgets/Input_widgets.dart';
import 'widgets/interactive_widgets/Interactive_widgets.dart';
import 'widgets/layout_widgets/Layout_widgets.dart';
import 'widgets/material_widgets/Material_widgets.dart';
import 'widgets/painting_and_effect_widgets/Painting_and_effects_widgets.dart';
import 'widgets/scrolling_widgets/Scrolling_widgets.dart';
import 'widgets/styling_widgets/Styling_widgets.dart';
import 'widgets/text_widgets/Text_widgets.dart';

void main() {
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter fundaments'),
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
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Link 1'),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Link 2'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Link 3'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                // child: Text('Here comes widget demo'),
                child: ListView(
                  children: [
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: AccessibilityWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: AnimationWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: AssetWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: AsyncWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: CupertinoWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: InputWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: InteractiveWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: LayoutWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: MaterialWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: PaintingAndEffectsWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: ScrollingWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: StylingWidgets(),
                    ),
                    Container(
                      color: Colors.amber,
                      margin: EdgeInsets.only(
                          top: 8, right: 8, bottom: 16, left: 8),
                      padding: EdgeInsets.all(8),
                      child: TextWidgets(),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text('Here comes demo code '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
