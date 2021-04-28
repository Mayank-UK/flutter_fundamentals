import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedCrossFadeWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedCrossFade';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedCrossFadeImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedCrossFadeImplementation extends StatefulWidget {
  @override
  __AnimatedCrossFadeImplementationState createState() =>
      __AnimatedCrossFadeImplementationState();
}

class __AnimatedCrossFadeImplementationState
    extends State<_AnimatedCrossFadeImplementation> {
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
              '"AnimatedCrossFade" widget has named parameters "firstChild", "secondChild", "crossFade", etc which help in animating the fade animation.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AnimatedCrossFade(
                      duration: const Duration(seconds: 3),
                      firstChild: const FlutterLogo(
                          style: FlutterLogoStyle.horizontal, size: 100.0),
                      secondChild: const FlutterLogo(
                          style: FlutterLogoStyle.stacked, size: 100.0),
                      crossFadeState: this.isToggled
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text('Animate cross fade'),
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
