import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class ElevatedButtonWidgetView extends StatelessWidget {
  String appBarTitle = 'ElevatedButton';
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
