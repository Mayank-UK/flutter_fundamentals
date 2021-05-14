import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class DefaultTextStyleWidgetView extends StatelessWidget {
  final String _appBarTitle = 'DefaultTextStyle';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _DefaultTextStyleWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _DefaultTextStyleWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"DefaultTextStyle" widget has named parameters like style, textAlign, etc, which specify the default text style of it\'s children.',
            ),
            Container(
              child: DefaultTextStyle(
                style: TextStyle(fontSize: 36, color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Default text',
                    ),
                    const Text(
                      'Override default text',
                      style: TextStyle(fontSize: 24),
                    ),
                    const Text(
                      'Default text',
                      style: TextStyle(color: Colors.red),
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
