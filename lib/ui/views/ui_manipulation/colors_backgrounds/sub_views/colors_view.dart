import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class ColorsView extends StatelessWidget {
  String appBarTitle = 'Text Color';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _ColorsImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _ColorsImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Particular text element color using "Text" widget',
          content: [
            Container(
              child: Text(
                  '"Text" widget has a named parameter "style" which takes an object of "TextStyle" class. \nUse the "Color" enum for using pre specified material theme colors.'),
            ),
            Container(
              child: Text(
                'Text',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Whole section text color using "DefaultTextStyle" widget',
          content: [
            Container(
              child: Text(
                  '"DefaultTextStyle" widget has a named parameter "style" which takes an object of "TextStyle" class. \nUse the "Color" enum for using pre specified material colors.'),
            ),
            Container(
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.red),
                child: Text(
                  'Text',
                ),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Whole application text color using "MaterialApp" widget',
          content: [
            Container(
              child: Text(
                  '"MaterialApp" widget has a named parameter "theme" which takes an object of "ThemeData" class.'),
            ),
            // remove it after pasting in msrkdown file
            /* Container(
              child: MaterialApp(
                theme: ThemeData(
                  textTheme: TextTheme(
                    bodyText1: TextStyle(),
                    bodyText2: TextStyle(),
                  ).apply(
                    bodyColor: Colors.orange,
                    displayColor: Colors.blue,
                  ),
                ),
              ),
            ), */
          ],
        ),
      ],
    );
  }
}
