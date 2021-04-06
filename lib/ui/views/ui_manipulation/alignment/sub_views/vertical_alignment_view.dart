import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class VerticalAlignmentView extends StatelessWidget {
  String appBarTitle = 'Vertical alignment';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
