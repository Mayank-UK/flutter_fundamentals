import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class AppBarWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AppBarView';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AppBarWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AppBarWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"AppBar" widget has named parameters like title, backgroundColor, drawer, actions, etc, which specify the app bar.',
            ),
            TextBlockComponent(
              '"AppBar" by default creates a back button when when a route is pushed in navigator stack.',
            ),
            Container(
              child: AppBar(
                title: Text('AppBar'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
