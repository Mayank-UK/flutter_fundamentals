import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SemanticsWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Semantics';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/accessibility/semantics_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SemanticsWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SemanticsWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
                '"Semantics" widget has named parameters like image, label, etc, which provide it with semantics.'),
            Container(
              child: Semantics(
                image: true,
                label: 'profile picture',
                child: Image(
                  height: 64,
                  width: 64,
                  image: AssetImage('assets/images/demo.jpeg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
