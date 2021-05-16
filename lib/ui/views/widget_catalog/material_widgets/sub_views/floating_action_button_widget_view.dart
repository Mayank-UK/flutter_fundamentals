import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class FloatingActionButtonWidgetView extends StatelessWidget {
  final String _appBarTitle = 'FloatingActionButton';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/floating_action_button_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FloatingActionButtonWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FloatingActionButtonWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"FloatingActionButton" has named parameters onPressed and child, which specify the button\'s behavior and it\'s content.',
            ),
            Container(
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
