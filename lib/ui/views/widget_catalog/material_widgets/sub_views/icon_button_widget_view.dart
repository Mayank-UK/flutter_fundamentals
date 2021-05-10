import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class IconButtonWidgetView extends StatelessWidget {
  final String _appBarTitle = 'IconButton';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _IconButtonWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _IconButtonWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"IconButton" widget has named parameters like onPressed, icon, etc, which specify the widget\'s behavior and layout.',
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ac_unit,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
