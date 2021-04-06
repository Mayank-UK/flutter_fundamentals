import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class ConstraintsView extends StatelessWidget {
  String appBarTitle = 'Constraints';
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
