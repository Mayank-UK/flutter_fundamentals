import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SliverChildListDelegateWidgetView extends StatelessWidget {
  final String _appBarTitle = 'SliverChildListDelegate';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/sliver_child_list_delegate_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SliverChildListDelegateWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SliverChildListDelegateWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"SliverChildListDelegate" delegates a list to the "SliverList" widget.',
            ),
            Container(
              color: Colors.white,
              height: 500,
              padding: const EdgeInsets.all(8),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate(
                      List.generate(
                        10,
                        (index) {
                          return Container(
                            color: Colors.amber,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 4),
                          );
                        },
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
