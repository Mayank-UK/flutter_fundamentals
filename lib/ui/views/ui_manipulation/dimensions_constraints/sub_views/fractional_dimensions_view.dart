import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class FractionalDimensionsView extends StatelessWidget {
  String appBarTitle = 'Screen fraction dimensions';
  String codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this.appBarTitle,
      previewTab: _FractionalDimensionsImplementation(),
      codeTabMarkdownLocation: this.codeTabMarkdownLocation,
    );
  }
}

class _FractionalDimensionsImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SectionWrapperComponent(
          title: 'Using "MediaQuery"',
          content: [
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text('10% height and 75% width of screen'),
            )
          ],
        ),
      ],
    );
  }
}
