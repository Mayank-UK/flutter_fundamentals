import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SliverAppBarWidgetView extends StatelessWidget {
  final String _appBarTitle = 'SliverAppBar';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/sliver_app_bar_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SliverAppBarWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SliverAppBarWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"SliverAppBar" widget has named parameter\'s like pinned, snap, floating, expandedHeight, etc, which specify the widget\'s behavior.',
            ),
            TextBlockComponent(
              '"SliverAppBar" widget is used inside the "CustomScrollView" widget.',
            ),
            Container(
              color: Colors.white,
              height: 500,
              padding: const EdgeInsets.all(8),
              child: Scaffold(
                body: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      pinned: true,
                      snap: true,
                      floating: true,
                      expandedHeight: 160.0,
                      flexibleSpace: const FlexibleSpaceBar(
                        title: Text('SliverAppBar'),
                        background: FlutterLogo(),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            color: index.isOdd ? Colors.white : Colors.black12,
                            height: 100.0,
                            child: Center(
                              child: Text('$index', textScaleFactor: 5),
                            ),
                          );
                        },
                        childCount: 20,
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
