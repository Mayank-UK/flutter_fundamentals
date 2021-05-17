import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ListViewWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ListView';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/list_view_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ListViewWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ListViewWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"ListView" widget has many builder like ListView.builder, ListView.separator, etc, for different layouts.',
            ),
            TextBlockComponent(
              '"ListView" widget has named parameter like shrinkWrap, itemCount, itemBuilder, which specify the building of list.',
            ),
            Container(
              height: 500,
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.amber,
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 4),
                    child: Center(
                      child: Text('Entry $index'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
