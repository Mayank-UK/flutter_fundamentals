import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class PageLayoutView extends StatelessWidget {
  final String _appBarTitle = 'Page layout';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _PageLayoutImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _PageLayoutImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'General information',
          content: [
            Container(
              child: Text(
                  'Page layout in flutter is mostly build using 2 main style widgets, "MaterialApp" for android and "Cupertino" for ios. Although it is perfectly normal to not use these widgets and have your own custom styling.'),
            ),
            Container(
              child: Text(
                  'To use any widget in your flutter file including the above mentioned widgets, you have to import either "widgets" package, or "material" package, or "cupertino" package.'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "MaterialApp" widget',
          content: [
            Container(
              child: Text(
                  '"MaterialApp" widget has named parameters "home", "initialRoute" which takes "Scaffold" widget as a value.'),
            ),
            Container(
              child: Text(
                  '"Scaffold" widget has named parameters "appBar", "drawer", and "body" which takes "appBar", "drawer" and other body widgets as a value.'),
            ),
            Container(
              child: Text(
                  'First import the material package from the flutter library to use it.'),
            )
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Cupertino" widget',
          content: [
            Container(
              child: const Text(''),
            )
          ],
        ),
      ],
    );
  }
}
