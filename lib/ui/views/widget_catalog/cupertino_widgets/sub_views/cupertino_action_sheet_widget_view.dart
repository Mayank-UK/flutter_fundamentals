import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class CupertinoActionSheetWidgetView extends StatelessWidget {
  final String _appBarTitle = 'CupertinoActionSheet';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: const Text('content will be available soon'),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}
