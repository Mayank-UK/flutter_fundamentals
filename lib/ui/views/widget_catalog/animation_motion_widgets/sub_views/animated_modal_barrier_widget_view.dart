import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedModalBarrierWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedModalBarrier';
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

class _AnimatedModalBarrierImplementation extends StatefulWidget {
  @override
  __AnimatedModalBarrierImplementationState createState() =>
      __AnimatedModalBarrierImplementationState();
}

class __AnimatedModalBarrierImplementationState
    extends State<_AnimatedModalBarrierImplementation> {
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
                      // child:
                      ),
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text(''),
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
