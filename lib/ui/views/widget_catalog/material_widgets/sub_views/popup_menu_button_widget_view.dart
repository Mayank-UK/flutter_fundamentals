import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class PopupMenuButtonWidgetView extends StatelessWidget {
  final String _appBarTitle = 'PopupMenuButton';
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
