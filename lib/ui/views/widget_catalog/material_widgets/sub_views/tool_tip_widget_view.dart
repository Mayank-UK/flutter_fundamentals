import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class TooltipWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Tooltip';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/tool_tip_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _TooltipWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _TooltipWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Tooltip" widget has named parameters like height, padding, decoration, message, etc, which specify the widget\'s behavior and UI.',
            ),
            Container(
              child: Tooltip(
                message: 'Tooltip demo',
                child: TextButton(
                    onPressed: () {},
                    child: const Text('hover over for tooltip')),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
