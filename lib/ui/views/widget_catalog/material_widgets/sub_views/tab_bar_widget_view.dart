import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class TabBarWidgetView extends StatelessWidget {
  final String _appBarTitle = 'TabBar';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _TabBarWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _TabBarWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"TabBar" widget has named parameters like indicator, indicatorColor, padding, tabs, etc, which specify the TabBar behavior.',
            ),
            TextBlockComponent(
              '"TabBar" widget define it\'s tabs using "Tab" widget.',
            ),
            TextBlockComponent(
              'For custom tabBar behavior use "TabController" class.',
            ),
            Container(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      color: Colors.blueGrey,
                      child: TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(icon: Icon(Icons.directions_car)),
                          Tab(icon: Icon(Icons.directions_transit)),
                          Tab(icon: Icon(Icons.directions_bike)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      height: 200,
                      child: TabBarView(
                        children: [
                          Icon(Icons.directions_car),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
