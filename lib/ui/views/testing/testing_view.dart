import 'package:flutter/material.dart';

import '../../components/code_preview_component.dart';
import '../../components/section_wrapper_component_component.dart';

import '../../components/code_preview_component.dart';
import '../../components/section_wrapper_component_component.dart';

class TestingView extends StatelessWidget {
  String appBarTitle = 'Testing';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _TestingImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _TestingImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Testing',
          content: [],
        ),
      ],
    );
  }
}
