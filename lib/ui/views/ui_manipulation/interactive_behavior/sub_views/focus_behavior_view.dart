import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class FocusBehaviorView extends StatelessWidget {
  String appBarTitle = 'Focus behavior';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _FocusBehaviorImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _FocusBehaviorImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Focus behavior',
          content: [],
        ),
      ],
    );
  }
}
