import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ColumnWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Column';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/column_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ColumnWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ColumnWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Column" widget takes a number of children and places them vertically one after the another.',
            ),
            TextBlockComponent(
              'It has a named parameter alignment, which specify the alignment of it\'s children.',
            ),
            Container(
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(8),
                width: 100,
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      height: 16,
                    ),
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                    ),
                    Container(
                      height: 16,
                    ),
                    Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
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
