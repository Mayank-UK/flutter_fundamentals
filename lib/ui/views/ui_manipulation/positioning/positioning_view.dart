import 'package:flutter/material.dart';

import '../../../components/code_preview_component.dart';
import './../../../components/section_wrapper_component_component.dart';

class PositioningView extends StatelessWidget {
  String appBarTitle = 'Positioning';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _PositioningImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _PositioningImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "Stack" widget with "Positioned" widget',
          content: [
            Container(
              child: Text(
                  '"Stack" widget serves as the parent and "Positioned" widgets serves as the children.'),
            ),
            Container(
              child: Text(
                  'Each "Positioned" widget child can be positioned individually using named parameters "top", "right", "bottom" and "left".'),
            ),
            Container(
              color: Colors.amber,
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
