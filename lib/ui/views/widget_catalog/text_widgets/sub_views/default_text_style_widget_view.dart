import 'package:flutter/material.dart';

import '../../../../widgets/code_preview.dart';

class DefaultTextStyleWidgetView extends StatelessWidget {
  String appBarTitle;
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  DefaultTextStyleWidgetView({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabs(
      appBarTitle: this.appBarTitle,
      previewTab: Text('preview'),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}
