import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ScrollConfigurationWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ScrollConfiguration';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/scrolling/scroll_configuration_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ScrollConfigurationWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ScrollConfigurationWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              'Content will be updated soon.',
            ),
            Container(),
          ],
        ),
      ],
    );
  }
}
