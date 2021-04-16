import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class HoverBehaviorView extends StatelessWidget {
  final String _appBarTitle = 'Hover behavior';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/interactive_behaviours/hover_behavior_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _HoverBehaviorImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _HoverBehaviorImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'content will be available soon',
          content: [],
        ),
      ],
    );
  }
}
