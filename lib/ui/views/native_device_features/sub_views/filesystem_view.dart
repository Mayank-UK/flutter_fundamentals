import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';

import './../../../components/section_wrapper_component_component.dart';
import './../../../components/text_block_component.dart';

class FileSystemView extends StatelessWidget {
  final String _appBarTitle = 'Filesystem';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FileSystemImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FileSystemImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent('Content will be updated soon.'),
            Container(),
          ],
        ),
      ],
    );
  }
}
