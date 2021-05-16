import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ExpandedWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Expanded';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/expanded_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ExpandedWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ExpandedWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Expanded" widget takes up all the available space for it\'s child.',
            ),
            Container(
              child: Expanded(
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
