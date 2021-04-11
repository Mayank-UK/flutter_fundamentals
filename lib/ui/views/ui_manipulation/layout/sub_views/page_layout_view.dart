import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class PageLayoutView extends StatelessWidget {
  final String _appBarTitle = 'Application and page layout';
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
                  'There are 2 main widgets which are used at the root(main.dart) of most flutter applications, "MaterialApp" for android and "Cupertino" for ios. Although it is perfectly normal to not use these widgets and have your own custom styling.'),
            ),
            Container(
              child: Text(
                  'Every page has it\'s own "Scaffold" widget which gives structure to a page like appBar, drawer, etc.'),
            ),
            Container(
              child: Text(
                  'To use any widget in your flutter file including the above mentioned widgets, you have to import either "widgets" package, or "material" package, or "cupertino" package.'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "MaterialApp" at root(main.dart)',
          content: [
            Container(
              child: Text(
                  'Material is a design system developed by google for it\'s android operating system.'),
            ),
            Container(
              child: Text(
                  '"MaterialApp" widget has named parameters "home", which takes "Scaffold" widget as a value. It also has other named parameters for routes, themes, etc.'),
            ),
            Container(
              child: Text(
                  '"Scaffold" widget has named parameters "appBar", "drawer", and "body" which takes "appBar", "drawer" and other widgets for "body" as a value.'),
            ),
            Container(
              child: Text(
                  'Import the material package from the flutter library to use it.'),
            )
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Cupertino" at root(main.dart)',
          content: [
            Container(
              child: Text(
                  'Cupertino is a design system developed by apple for it\'s ios operating system.'),
            ),
            Container(
              width: double.infinity,
              child: const Text('_'),
            )
          ],
        ),
      ],
    );
  }
}
