import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';

class InFlowView extends StatelessWidget {
  final String _appBarTitle = 'In flow';
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

/* class  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget> [
        SectionWrapperComponent(
          title: '',
          content: [],
        ),
      ],
    );
  }
}
 */
