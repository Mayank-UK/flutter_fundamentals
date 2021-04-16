import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class DeclarativeRoutingView extends StatelessWidget {
  final String _appBarTitle = 'Declarative routing';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/navigation_routing/declarative_approach_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _DeclarativeRoutingImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _DeclarativeRoutingImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Declarative routing',
          content: [
            TextBlockComponent('content will be available soon.'),
          ],
        ),
      ],
    );
  }
}
