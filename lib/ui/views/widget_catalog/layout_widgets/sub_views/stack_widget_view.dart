import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class StackWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Stack';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _StackWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _StackWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Stack" widget helps in positioning layout elements on top of each other.',
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      color: Colors.amber,
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.red,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
