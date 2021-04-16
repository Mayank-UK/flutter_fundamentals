import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class PaddingSpacingView extends StatelessWidget {
  final String _appBarTitle = 'Padding';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/spacing/padding_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _PaddingSpacingImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _PaddingSpacingImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using "Container" widget (preferred way)',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "padding", which takes an object of "EdgeInsets" class.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: const Text('Padding of 8'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Padding" widget',
          content: [
            Container(
              child: Text(
                  '"Padding" widget has a named parameter "padding", which takes an object of "EdgeInsets" class.'),
            ),
            Container(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  child: const Text('Padding of 8'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
