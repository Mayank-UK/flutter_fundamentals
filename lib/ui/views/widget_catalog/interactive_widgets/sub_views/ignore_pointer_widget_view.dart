import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class IgnorePointerWidgetView extends StatelessWidget {
  final String _appBarTitle = 'IgnorePointer';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _IgnorePointerWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _IgnorePointerWidgetImplementation extends StatefulWidget {
  @override
  __IgnorePointerWidgetImplementationState createState() =>
      __IgnorePointerWidgetImplementationState();
}

class __IgnorePointerWidgetImplementationState
    extends State<_IgnorePointerWidgetImplementation> {
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
              '"IgnorePointer" widget has a named parameter ignore, which specifies weather to ignore the pointer or not.',
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        IgnorePointer(
                          ignoring: this._isToggled,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Ignore pointer set to: ${this._isToggled}',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: this.onPressed,
                    child: Text('Tap to toggle ignore pointer'),
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
