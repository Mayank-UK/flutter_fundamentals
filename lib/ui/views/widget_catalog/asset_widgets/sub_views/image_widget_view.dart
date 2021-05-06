import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ImageWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ImageWidget';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ImageWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ImageWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
                '"Image" widget has named parameters like height, width, image, etc, which specify the image.'),
            Container(
              child: Image(
                height: 64,
                width: 64,
                image: AssetImage('assets/images/demo.jpeg'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
