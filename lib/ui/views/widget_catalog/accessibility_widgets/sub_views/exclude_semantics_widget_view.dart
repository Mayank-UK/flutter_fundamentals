import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ExcludeSemanticsWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ExcludeSemantics';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/accessibility/exclude_semantics_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ExcludeSemanticsWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ExcludeSemanticsWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
                '"ExcludeSemantics" widget, which removes the semantics from it\'s child tree.'),
            Container(
              child: ExcludeSemantics(
                excluding: true,
                child: Image(
                  height: 64,
                  width: 64,
                  image: AssetImage(
                    'assets/images/demo.jpeg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
