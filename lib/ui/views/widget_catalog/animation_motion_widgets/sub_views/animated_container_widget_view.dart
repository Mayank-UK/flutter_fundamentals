import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedContainerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedContainer';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedContainerImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedContainerImplementation extends StatefulWidget {
  @override
  __AnimatedContainerImplementationState createState() =>
      __AnimatedContainerImplementationState();
}

class __AnimatedContainerImplementationState
    extends State<_AnimatedContainerImplementation> {
  @override
  bool selected = false;

  void onPressed() {
    setState(() {
      selected = !selected;
    });
  }

  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"AnimatedContainer" widget has named parameters like "width", "height", "color", etc that will animate the container.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: AnimatedContainer(
                      width: selected ? 200.0 : 100.0,
                      height: selected ? 100.0 : 200.0,
                      color: selected ? Colors.red : Colors.blue,
                      alignment: selected
                          ? Alignment.center
                          : AlignmentDirectional.topCenter,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      child: const FlutterLogo(size: 75),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text('Animate container'),
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
