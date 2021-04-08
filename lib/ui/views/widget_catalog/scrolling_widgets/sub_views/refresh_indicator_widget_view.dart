import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class RefreshIndicatorWidgetView extends StatelessWidget {
  String appBarTitle = 'RefreshIndicator';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
