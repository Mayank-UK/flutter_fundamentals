import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class IntrinsicHeightWidgetView extends StatelessWidget {
  final String _appBarTitle = 'IntrinsicHeight';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/intrinsic_height_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _IntrinsicHeightWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _IntrinsicHeightWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent('Used rarely.'),
            Container(),
          ],
        ),
      ],
    );
  }
}
