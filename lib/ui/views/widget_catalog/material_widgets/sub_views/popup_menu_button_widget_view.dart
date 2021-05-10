import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class PopupMenuButtonWidgetView extends StatelessWidget {
  final String _appBarTitle = 'PopupMenuButton';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _PopupMenuButtonWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _PopupMenuButtonWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"PopupMenuButton" widget has named parameters onSelected and itemBuilder, which specify the button\'s behavior and content.',
            ),
            TextBlockComponent(
              '"PopupMenuButton" widget uses "PopMenuItem" as it\'s child, which in turn has named parameters child and value, the value is passed to a function that will be used for "onSelected".',
            ),
            Container(
              color: Colors.blue,
              child: PopupMenuButton(
                itemBuilder: (BuildContext bc) => [
                  PopupMenuItem(
                    child: Text("New Chat"),
                    value: "/newchat",
                  ),
                  PopupMenuItem(
                    child: Text("New Group Chat"),
                    value: "/new-group-chat",
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                    value: "/settings",
                  ),
                ],
                onSelected: (value) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
