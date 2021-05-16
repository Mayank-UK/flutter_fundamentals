import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ListTileWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ListTile';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/list_tile_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ListTileWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ListTileWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"ListTile" widget has named parameters like trailing, title, etc, which specify the widget\'s behavior and UI.',
            ),
            TextBlockComponent(
              '"ListTile" widget is mainly used inside "ListView" widget, but can also be used separately.',
            ),
            Container(
              color: Colors.amber,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: const Text('ListTile'),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      trailing: FlutterLogo(),
                      title: const Text('ListTile'),
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
