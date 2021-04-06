import 'package:flutter/material.dart';

import '../../../widgets/main_appbar.dart';
import '../../../../core/router/router.dart';
import '../../../widgets/custom_listview.dart';

class AccessibilityWidgetsView extends StatelessWidget {
  List<ListViewItem> _itemList = [
    ListViewItem(
      title: 'ExcludeSemantics',
      description:
          'A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would only be confusing. For example, the Material Components Chip widget hides the avatar since it is redundant with the chip label.',
      route: RoutePaths.excludeSemanticsWidget,
    ),
    ListViewItem(
      title: 'MergeSemantics',
      description: 'A widget that merges the semantics of its descendants.',
      route: RoutePaths.mergeSemanticsWidget,
    ),
    ListViewItem(
      title: 'Semantics',
      description:
          'A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application.',
      route: RoutePaths.semanticsWidget,
    ),
  ];

  String appBarTitle = 'Accessibility widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(appBarTitle: this.appBarTitle),
      body: CustomListView(
        itemList: _itemList,
      ),
    );
  }

  /* @override
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
                      'Accessibility widgets',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  WidgetInfo(
                    title: 'Accessibility widgets',
                    description:
                        '-A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would only be confusing. For example, the Material Components Chip widget hides the avatar since it is redundant with the chip label.',
                  ),
                  WidgetInfo(
                    title: 'ExcludeSemantics',
                    description:
                        '-A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would only be confusing. For example, the Material Components Chip widget hides the avatar since it is redundant with the chip label.',
                  ),
                  WidgetInfo(
                    title: 'MergeSemantics',
                    description:
                        '-A widget that merges the semantics of its descendants.',
                  ),
                  WidgetInfo(
                    title: 'Semantics',
                    description:
                        '-A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application.',
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
