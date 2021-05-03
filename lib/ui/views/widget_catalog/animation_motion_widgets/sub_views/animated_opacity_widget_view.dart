import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedOpacityWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedOpacity';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedOpacityImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedOpacityImplementation extends StatefulWidget {
  @override
  __AnimatedOpacityImplementationState createState() =>
      __AnimatedOpacityImplementationState();
}

class __AnimatedOpacityImplementationState
    extends State<_AnimatedOpacityImplementation> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"AnimatedOpacity" widget has named parameters like "opacity", "duration", etc to specify the animation.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedOpacity(
                    opacity: opacityLevel,
                    duration: Duration(seconds: 1),
                    child: FlutterLogo(
                      size: 64,
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Toggle logo opacity'),
                    onPressed: _changeOpacity,
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
