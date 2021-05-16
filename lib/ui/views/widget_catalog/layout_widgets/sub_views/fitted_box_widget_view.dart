import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class FittedBoxWidgetView extends StatelessWidget {
  final String _appBarTitle = 'FittedBox';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/fitted_box_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FittedBoxWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FittedBoxWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"FittedBox" widget has a named parameter fit, which specify how a child should fit inside the box.',
            ),
            Container(
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image(
                  image: AssetImage('assets/images/demo.jpeg'),
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
