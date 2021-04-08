import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class OpacityView extends StatelessWidget {
  String appBarTitle = 'Opacity';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _OpacityImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _OpacityImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "Container" widget',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "color", which takes in an object of "Color" or "Colors" class. Either opacity can be specified in the hex code or applied manually using "withOpacity" method of "Color" and "Colors" object.'),
            ),
            Container(
              child: Text(
                  'Use this method if only a single image or color needs to be composited.'),
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF0E3311),
                  height: 100,
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Text(
                    'Without opacity',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Color(0xFF0E3311).withOpacity(0.5),
                  height: 100,
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Text(
                    'With opacity',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "Opacity" widget',
          content: [
            Container(
              child: Text(
                  '"Opacity" widget has a named parameter, which takes a floating point value.'),
            ),
            Container(
              child: Text(
                  'Use this method if a group of widgets opacity needs to be composited.'),
            ),
            Wrap(
              spacing: 8,
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  height: 100,
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Text('Without opacity'),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.amber,
                    height: 100,
                    padding: EdgeInsets.all(8),
                    width: 100,
                    child: Text('With opacity'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
