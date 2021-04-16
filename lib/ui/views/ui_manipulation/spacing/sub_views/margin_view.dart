import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class MarginSpacingView extends StatelessWidget {
  final String _appBarTitle = 'Margin';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/spacing/margin_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _MarginImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _MarginImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using "Container" widget',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "margin", which takes an object of "EdgeInsets" class.'),
            ),
            Container(
              alignment: Alignment.topLeft,
              color: Colors.amber,
              height: 100,
              width: double.infinity,
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: const Text('Margin of 8 from parent'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
