import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class OverFlowBoxWidgetView extends StatelessWidget {
  final String _appBarTitle = 'OverFlowBox';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/overflow_box_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _OverFlowBoxWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _OverFlowBoxWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"OverflowBox" widget has named parameters like maxWidth, maxHeight, etc, which specify the overflowing nature of it\'s child.',
            ),
            Container(
              color: Colors.amber,
              height: 50,
              child: OverflowBox(
                maxWidth: 200,
                maxHeight: 200,
                child: Container(
                  color: Colors.red,
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
