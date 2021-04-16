import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class HyperlinksView extends StatelessWidget {
  final String _appBarTitle = 'Hyperlinks';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/hyperlinks_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _HyperlinksImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _HyperlinksImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Hyperlinks',
          content: [
            TextBlockComponent(
              'content will be available soon.',
            ),
          ],
        ),
      ],
    );
  }
}
