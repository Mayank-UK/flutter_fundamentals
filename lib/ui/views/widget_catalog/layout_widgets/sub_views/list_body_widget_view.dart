import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ListBodyWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ListBody';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/list_body_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ListBodyWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ListBodyWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              'This widget is rarely used directly, consider using  ListView.',
            ),
            Container(),
          ],
        ),
      ],
    );
  }
}
