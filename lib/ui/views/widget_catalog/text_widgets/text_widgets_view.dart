import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';

import '../../../../core/router/routes.dart';
import '../../../components/custom_final_stage_listview_component.dart';

class TextWidgetsView extends StatelessWidget {
  final List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'DefaultTextStyle',
      description:
          'The text style to apply to descendant Text widgets without explicit style.',
      route: RoutePaths.defaultTextStyle,
    ),
    ListViewItem(
      title: 'RichText',
      description:
          'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
      route: RoutePaths.richText,
    ),
    ListViewItem(
      title: 'Text',
      description: 'A run of text with a single style.',
      route: RoutePaths.text,
    ),
  ];

  final String _appBarTitle = 'Text widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: CustomFinalStageListViewComponent(
        itemList: _itemList,
      ),
    );
  }

  /* final String _appBarTitle;

  TextWidgetsView();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this._appBarTitle),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: const Text('Demo'),
              ),
              Tab(
                child: const Text('Code'),
              ),
            ],
          ),
        ),
        
        body: TabBarView(children: <Widget> [
          Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Container(
                    child: Text(
                      'Text widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'DefaultTextStyle',
                    description:
                        '-The text style to apply to descendant Text widgets without explicit style.',
                  ),
                  Container(
                    child: DefaultTextStyle(
                      style: TextStyle(fontSize: 36, color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          const Text(
                            'The first text',
                          ),
                          const Text(
                            'The second text',
                            style: TextStyle(fontSize: 24),
                          ),
                          const Text(
                            'The third text',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'RichText',
                    description:
                        '-The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'bold',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Text',
                    description: '-A run of text with a single style.',
                  ),
                  Container(
                    child: const Text('This is written using text widget.'),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: const Text('Demo code here'),
          )
        ]),
      ),
    );
  } */
}
