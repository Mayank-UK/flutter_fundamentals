import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class SupportingEnumsView extends StatelessWidget {
  String appBarTitle = 'Supporting enums';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _SupportingEnumsImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _SupportingEnumsImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Supporting enums',
          content: [],
        ),
      ],
    );
  }
}
