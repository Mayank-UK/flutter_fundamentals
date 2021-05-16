import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class DividerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Divider';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/divider_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _DividerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _DividerWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Divider" widget has named parameters like height, thickness, indent, etc, which specify the widget\'s behavior and UI.',
            ),
            Container(
              child: Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
