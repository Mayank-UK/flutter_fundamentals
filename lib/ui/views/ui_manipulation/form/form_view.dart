import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class FormView extends StatelessWidget {
  String appBarTitle = 'Form';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _FormImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _FormImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Form',
          content: [],
        ),
      ],
    );
  }
}
