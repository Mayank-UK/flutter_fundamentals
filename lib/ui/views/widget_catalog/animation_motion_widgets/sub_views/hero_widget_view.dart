import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class HeroWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Hero';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: const Text('In development'),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}
