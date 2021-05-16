import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class SwitchWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Switch';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/switch_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _SwitchWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _SwitchWidgetImplementation extends StatefulWidget {
  @override
  __SwitchWidgetImplementationState createState() =>
      __SwitchWidgetImplementationState();
}

class __SwitchWidgetImplementationState
    extends State<_SwitchWidgetImplementation> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"Switch" widget has named parameters value and onChanged, which specifies the widget behavior and content.',
            ),
            Container(
              child: Switch(
                value: status,
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    status = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
