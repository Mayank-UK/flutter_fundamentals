import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class TextView extends StatelessWidget {
  String appBarTitle = 'Text';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _TextImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _TextImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Font size',
          content: [
            Container(
              child: Text(
                  'Text size can be changed using "Text" widget\'s named parameter "style" which takes an object of "TextStyle" class.'),
            ),
            Container(
              child: Text(
                  '"TextStyle" object takes a named parameter "fontSize", which takes an integer value.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text(
                'Sample text of size 20',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Font color',
          content: [
            Container(
              child: Text(
                  'Text size can be changed using "Text" widget\'s named parameter "style" which takes an object of "TextStyle" class.'),
            ),
            Container(
              child: Text(
                  '"TextStyle" object takes a named parameter "color", which takes an object of "Color" class or you can also use predefined colors from material UI using "Colors" enum.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text(
                'Sample text with red color',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Font style',
          content: [
            Container(
              child: Text(
                  'Text size can be changed using "Text" widget\'s named parameter "style" which takes an object of "TextStyle" class.'),
            ),
            Container(
              child: Text(
                  '"TextStyle" object takes a named parameter "fontStyle", which takes a value predefined in "FontStyle" enum.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text(
                'Sample text italic font style',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Font weight',
          content: [
            Container(
              child: Text(
                  'Text size can be changed using "Text" widget\'s named parameter "style" which takes an object of "TextStyle" class.'),
            ),
            Container(
              child: Text(
                  '"TextStyle" object takes a named parameter "fontWeight", which takes a value predefined in "FontWeight" enum.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text(
                'Sample text bold weight',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Font family',
          content: [
            Container(
              child: Text(
                  'Text size can be changed using "Text" widget\'s named parameter "style" which takes an object of "TextStyle" class.'),
            ),
            Container(
              child: Text(
                  '"TextStyle" object takes a named parameter "fontFamily", which takes a string value for font family, the fonts should be first defined in "pubspec.yaml" file before using them here.'),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(8),
              child: Text(
                'Sample text with "Roboto-Light"',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto-Light',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
