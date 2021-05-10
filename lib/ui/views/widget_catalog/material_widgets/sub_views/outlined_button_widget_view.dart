import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class OutlinedButtonWidgetView extends StatelessWidget {
  final String _appBarTitle = 'OutlinedButton';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _OutlinedButtonWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _OutlinedButtonWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"OutlinedButton" widget has named parameters onPressed and child, which specify the button\'s behavior and content.',
            ),
            Container(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Button',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
