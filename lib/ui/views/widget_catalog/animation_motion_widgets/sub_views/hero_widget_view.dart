import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class HeroWidgetView extends StatelessWidget {
  final String _appBarTitle = 'Hero';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: const Text('content will be available soon'),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _HeroImplementation extends StatefulWidget {
  @override
  __HeroImplementationState createState() => __HeroImplementationState();
}

class __HeroImplementationState extends State<_HeroImplementation> {
  bool _isToggled = false;

  void onPressed() {
    setState(() {
      this._isToggled = !this._isToggled;
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
              'This widget is a bit tricky, will deal with it when needed.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text('Tap to toggle animation'),
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
