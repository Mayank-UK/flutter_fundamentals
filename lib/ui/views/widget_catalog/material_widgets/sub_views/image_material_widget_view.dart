import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ImageMaterialWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Image';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ImageMaterialWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ImageMaterialWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Image" widget has named parameters like height, width, fit, etc, which specify the widget\'s behavior.',
            ),
            Container(
                child: Image(
              image: AssetImage('assets/images/demo.jpeg'),
            )),
          ],
        ),
      ],
    );
  }
}
