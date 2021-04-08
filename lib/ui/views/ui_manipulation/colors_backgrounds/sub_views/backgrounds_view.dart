import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class BackgroundsView extends StatelessWidget {
  String appBarTitle = 'Backgrounds';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _BackgroundImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _BackgroundImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Particular element\'s background using "Container" widget',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "color", which takes a value for color.\nUse the "Color" enum for using pre specified material theme colors.'),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: 100,
              width: 100,
              child: Text('text'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Whole page background using  "Scaffold" widget',
          content: [
            Container(
              child: Text(
                  '"Scaffold" widget has a named parameter "backgroundColor", which takes a value for color\nUse the "Color" enum for using pre specified material theme colors.'),
            ),
            Container(
              child: Text(
                  'Example implementation can not be shown here as there can be only one "Scaffold" widget on a page.'),
            ),
            // remove it after pasting in md file
            /*
            Scaffold(
              body: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.amber),
                height: 100,
                width: 100,
                child: Text('text'),
              ),
            ),
            */
          ],
        ),
        SectionWrapperComponent(
          title:
              'Whole application background using using "MaterialApp" widget',
          content: [
            Container(
              child: Text(
                  '"MaterialApp" widget has a named parameter "theme", which takes an object of "ThemeData" class, which in turn has a named parameter "scaffoldBackgroundColor" that takes a value for color. \nUse the "Color" enum for using pre specified material theme colors.'),
            ),
            Container(
              child: Text(
                  'Example implementation can not be shown here as there can be only one "MaterialApp" widget in an application.'),
            ),
            // remove it after pasting in md file
            /*
            Scaffold(
              body: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.amber),
                height: 100,
                width: 100,
                child: Text('text'),
              ),
            ),
            */
          ],
        ),
      ],
    );
  }
}
