import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class PositionedTransitionWidgetView extends StatelessWidget {
  final String _appBarTitle = 'PositionedTransition';
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
