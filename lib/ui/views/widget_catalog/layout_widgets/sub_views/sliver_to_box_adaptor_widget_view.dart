import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SliverToBoxAdaptorWidgetView extends StatelessWidget {
  final String _appBarTitle = 'SliverToBoxAdaptor';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/layout/sliver_to_box_adaptor_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SliverToBoxAdaptorWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SliverToBoxAdaptorWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"SliverToBoxAdaptor" widget makes it\'s child usable inside sliver widgets.',
            ),
            Container(
              color: Colors.white,
              height: 500,
              padding: const EdgeInsets.all(8),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: ListView(
                      shrinkWrap: true,
                      children: List.generate(
                        10,
                        (index) {
                          return Container(
                            color: Colors.amber,
                            height: 50,
                            margin: const EdgeInsets.only(
                              bottom: 4,
                            ),
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
