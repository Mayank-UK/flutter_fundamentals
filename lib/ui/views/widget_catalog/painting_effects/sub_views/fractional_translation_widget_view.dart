import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class FractionalTranslationWidgetView extends StatelessWidget {
  final String _appBarTitle = 'FractionalTranslation';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FractionalTranslationWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FractionalTranslationWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"FractionalTranslation" widget has named parameter translation, which specifies the translation of it\'s child widget.',
            ),
            Container(
              color: Colors.amber,
              child: FractionalTranslation(
                translation: Offset(0.5, 0),
                child: Text(
                  "Hello world",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
