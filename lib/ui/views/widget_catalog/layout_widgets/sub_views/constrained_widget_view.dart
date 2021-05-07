import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ContainerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Container';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ContainerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ContainerWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Container" widget has named parameters like height, width, color, constraints, etc, which make it the most useful widget in flutter.',
            ),
            Container(
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
