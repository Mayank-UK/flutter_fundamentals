import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class BackdropFilterWidgetView extends StatelessWidget {
  final String _appBarTitle = 'BackdropFilter';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _BackdropFilterWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _BackdropFilterWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"BackdropFilter" widget has named parameter filter, which specifies the widget behavior.',
            ),
            Container(
              height: 200,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Text('0' * 10000),
                  Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ui.ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          width: 100.0,
                          height: 100.0,
                          child: Text('Hello World'),
                        ),
                      ),
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
