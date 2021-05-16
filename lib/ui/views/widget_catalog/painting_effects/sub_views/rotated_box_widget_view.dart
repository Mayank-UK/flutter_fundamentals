import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class RotatedBoxWidgetView extends StatelessWidget {
  final String _appBarTitle = 'RotatedBox';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/painting_effects/rotated_box_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _RotatedBoxWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _RotatedBoxWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"RotatedBox" widget has named parameter quarterTurns, which rotate it\'s child.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Sample text'),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: const Text(
                      'Sample text',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
