import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class InteractiveViewerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'InteractiveViewer';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _InteractiveViewerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _InteractiveViewerWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"InteractiveViewer" widget has named parameters like boundaryMargin, minScale, maxScale, etc, which specify the widget behavior.',
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: 200,
              width: 200,
              child: InteractiveViewer(
                boundaryMargin: const EdgeInsets.all(20.0),
                minScale: 5,
                maxScale: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
