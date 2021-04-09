import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class ApplicationLifecycleView extends StatelessWidget {
  String appBarTitle = 'Application lifecycle';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _ApplicationLifecycleImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _ApplicationLifecycleImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Application lifecycle',
          content: [],
        ),
      ],
    );
  }
}
