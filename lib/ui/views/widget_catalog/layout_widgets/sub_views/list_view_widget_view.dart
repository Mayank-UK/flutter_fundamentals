import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class ListViewWidgetView extends StatelessWidget {
  final String _appBarTitle = 'ListView';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ListViewWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ListViewWidgetImplementation extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"ListView" widget has many builder like ListView.builder, ListView.separator, etc, for different layouts.',
            ),
            TextBlockComponent(
              '"ListView" widget has named parameter like shrinkWrap, itemCount, itemBuilder, which specify the building of list.',
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(
                      child: Text('Entry ${entries[index]}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
