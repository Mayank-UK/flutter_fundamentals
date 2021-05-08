import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class GestureDetectorWidgetView extends StatelessWidget {
  final String _appBarTitle = 'GestureDetector';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _GestureDetectorWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _GestureDetectorWidgetImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(''),
            Container(
              child: GestureDetector(
                  onTap: () {
                    final Widget snackBar =
                        SnackBar(content: const Text('Click/tap registered'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.amber,
                    height: 100,
                    padding: const EdgeInsets.all(16),
                    width: 200,
                    child: Text(
                      'Tap anywhere on this container',
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
