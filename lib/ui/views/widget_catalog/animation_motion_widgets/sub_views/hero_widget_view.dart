import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class HeroWidgetView extends StatelessWidget {
  String appBarTitle = 'Hero';
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
