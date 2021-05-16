import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class NotificationListenerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'NotificationListener';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/scrolling/notification_listener_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _NotificationListenerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _NotificationListenerWidgetImplementation extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  bool _onNotification(scrollState) {
    if (scrollState is ScrollEndNotification &&
        scrollState.metrics.pixels != 160) {
      Future.delayed(const Duration(milliseconds: 100), () {}).then(
        (s) {
          _scrollController.animateTo(160,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
      );
    }

    return false;
  }

  Widget _getList() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, index) {
        return NotificationListener<ScrollNotification>(
          onNotification: (scrollState) => this._onNotification(scrollState),
          child: Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 1),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  height: 20,
                  width: 360,
                  child: const Text(
                    'Scroll to left/right',
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 20,
                  width: 100,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"NotificationListener" has a named parameter onNotification, which defines the widget\'s behavior.',
            ),
            Container(
              height: 500,
              child: _getList(),
            ),
          ],
        ),
      ],
    );
  }
}
