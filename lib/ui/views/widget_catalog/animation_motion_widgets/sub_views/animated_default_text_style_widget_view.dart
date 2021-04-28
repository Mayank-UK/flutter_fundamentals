import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedDefaultTextStyleWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedDefaultTextStyle';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedDefaultTextStyleWidgetImplementatio(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedDefaultTextStyleWidgetImplementatio extends StatefulWidget {
  @override
  __AnimatedDefaultTextStyleWidgetImplementatioState createState() =>
      __AnimatedDefaultTextStyleWidgetImplementatioState();
}

class __AnimatedDefaultTextStyleWidgetImplementatioState
    extends State<_AnimatedDefaultTextStyleWidgetImplementatio> {
  bool isToggled = false;

  void onPressed() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: this.isToggled
                          ? DSTypography.h6Dark
                          : DSTypography.h3Dark,
                      child: Text('Flutter'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text('Animated text style'),
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
