import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedAlignWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedAlign';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/animation_motion/animated_align_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedAlignWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedAlignWidgetImplementation extends StatefulWidget {
  @override
  __AnimatedAlignWidgetImplementationState createState() =>
      __AnimatedAlignWidgetImplementationState();
}

class __AnimatedAlignWidgetImplementationState
    extends State<_AnimatedAlignWidgetImplementation> {
  AlignmentGeometry _alignment = Alignment.topRight;

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
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
                '"AnimatedAlign" widget has named parameters like "alignment", "curve", "duration", etc which specify the animation.'),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.blue[50],
                    child: AnimatedAlign(
                      alignment: _alignment,
                      curve: Curves.ease,
                      duration: Duration(seconds: 3),
                      child: FlutterLogo(
                        size: 60,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      this._changeAlignment();
                    },
                    child: Text(
                      "Click Me!",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
