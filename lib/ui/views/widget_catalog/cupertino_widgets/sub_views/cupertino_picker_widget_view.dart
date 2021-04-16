import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class CupertinoPickerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'CupertinoPickerWidget';
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
