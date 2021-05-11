import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class BottomSheetWidgetView extends StatelessWidget {
  final String _appBarTitle = 'BottomSheet';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _BottomSheetWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _BottomSheetWidgetImplementation extends StatelessWidget {
  void _showModalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 350.0,
          color: Colors.transparent,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: Center(
                child: Text("This is a modal sheet"),
              )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              'Modal bottom sheet is shown using a function/method which returns a future that resolves when the modal window is closed.',
            ),
            Container(
              child: ElevatedButton(
                onPressed: () => this._showModalBottomSheetMenu(context),
                child: Text('Show bottom sheet'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
