import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class OpacityWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Opacity';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/painting_effects/opacity_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _OpacityWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _OpacityWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Opacity" widget has named parameter opacity, which specifies the opacity of the widget.',
            ),
            Container(
              color: Colors.amber,
              padding: const EdgeInsets.all(16),
              child: FractionalTranslation(
                translation: Offset(0.5, 0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
