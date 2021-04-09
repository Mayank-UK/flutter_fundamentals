import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class ShadowsView extends StatelessWidget {
  String appBarTitle = 'Shadows';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _ShadowImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _ShadowImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "Container" widget (preferred way)',
          content: [
            Container(
              child: Text(
                  '"Container" widget has a named parameter "decoration", which takes an object of "BoxDecoration" class.'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(4, 8),
                  ),
                ],
              ),
              height: 100,
              width: 100,
            )
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "PhysicalModel" widget',
          content: [
            Container(
              child: Text(
                  '"PhysicalModel" widget has named properties like elevation, shadowColor, etc for defining shadow.'),
            ),
            Container(
              child: PhysicalModel(
                color: Colors.amber,
                elevation: 8,
                shadowColor: Colors.black87,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
