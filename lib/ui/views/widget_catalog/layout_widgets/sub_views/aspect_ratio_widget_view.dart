import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class AspectRatioWidgetView extends StatelessWidget {
  String appBarTitle = 'AspectRatio';
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
