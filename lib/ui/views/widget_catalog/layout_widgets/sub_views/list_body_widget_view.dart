import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class ListBodyWidgetView extends StatelessWidget {
  String appBarTitle = 'ListBody';
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
