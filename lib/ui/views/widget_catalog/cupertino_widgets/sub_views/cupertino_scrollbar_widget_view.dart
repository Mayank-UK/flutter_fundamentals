import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class CupertinoScrollbarWidgetView extends StatelessWidget {
  final String _appBarTitle = 'CupertinoScrollBar';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: const Text('preview'),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}
