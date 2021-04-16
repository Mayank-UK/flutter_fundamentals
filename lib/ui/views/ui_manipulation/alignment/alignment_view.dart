import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class AlignmentView extends StatelessWidget {
  final String _appBarTitle = 'Alignment';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/alignment_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AlignmentImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AlignmentImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using parent "Container" widget',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "alignment" which takes a value made available using "Alignment" enum.'),
            ),
            Container(
              alignment: Alignment.topLeft,
              color: Colors.amber,
              height: 128,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(8),
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(16),
                child: const Text('Text'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: 128,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(8),
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(16),
                child: const Text('Text'),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              color: Colors.amber,
              height: 128,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(8),
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(16),
                child: const Text('Text'),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Individual child alignment using \'Align\' widget',
          content: [
            Container(
              child: Text(
                  '"Align" widget uses a named parameter "alignment", which takes a value made available using "Alignment" enum.'),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(bottom: 8),
              padding: EdgeInsets.all(8),
              child: Wrap(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                      child: const Text('Text'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                      child: const Text('Text'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(16),
                      child: const Text('Text'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
