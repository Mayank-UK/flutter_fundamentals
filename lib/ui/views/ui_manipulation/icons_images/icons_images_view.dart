import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class IconsImagesView extends StatelessWidget {
  String appBarTitle = 'Icons and images';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _IconsImagesImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _IconsImagesImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Icons and images',
          content: [],
        ),
      ],
    );
  }
}
