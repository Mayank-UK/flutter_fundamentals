import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class PageViewWidgetView extends StatelessWidget {
  final String _appBarTitle = 'PageView';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/scrolling/page_view_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _PageViewWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _PageViewWidgetImplementation extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"PageView" widget has named parameters like scrollDirection, controller, etc, which specify the widget\'s behavior.',
            ),
            Container(
              height: 500,
              color: Colors.white,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text('First Page'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Second Page'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Third Page'),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
