import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class FractionallySizedBoxWidgetView extends StatelessWidget {
  final String _appBarTitle = 'FractionallySizedBox';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FractionallySizedBoxWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FractionallySizedBoxWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"FractionallySizedBox" widget has named parameters like heightFactor, widthFactor, which specify the height and width it\'s children according to the available space.',
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                heightFactor: 0.5,
                widthFactor: 0.5,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
