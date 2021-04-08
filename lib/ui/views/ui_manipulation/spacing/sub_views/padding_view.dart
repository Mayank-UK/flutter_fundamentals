import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class PaddingSpacingView extends StatelessWidget {
  String appBarTitle = 'Padding';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _PaddingSpacingImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _PaddingSpacingImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "Container" widget (preferred way)',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "padding", which takes an object of "EdgeInsets" class.'),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                color: Colors.amber,
                padding: EdgeInsets.all(8),
                child: Text('Padding of 8'),
              ),
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
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.amber,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: Text('Padding of 8'),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
