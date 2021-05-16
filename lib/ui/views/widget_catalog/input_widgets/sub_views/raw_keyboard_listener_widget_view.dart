import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class RawKeyboardListenerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'RawKeyboardListener';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/input/raw_keyboard_listener_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _RawKeyboardListenerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _RawKeyboardListenerWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent('Very rarely used widget'),
            Container(),
          ],
        ),
      ],
    );
  }
}
