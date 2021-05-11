import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class CheckboxWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Checkbox';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _CheckboxWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _CheckboxWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Checkbox" widget has named parameters onChanges and value, which the specify the box\'s content and value.',
            ),
            Container(
              child: Checkbox(
                onChanged: (value) {},
                value: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
