import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class AlertDialogWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AlertDialog';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/widget_catalog/material/alert_dialog_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AlertDialogWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AlertDialogWidgetImplementation extends StatelessWidget {
  Future<void> _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: Text('This is a demo alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
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
              '"AlertDialog" widget is shown using a method which returns a Future that completes when the dialog is dismissed.',
            ),
            Container(
              child: ElevatedButton(
                onPressed: () => this._showDialog(context),
                child: Text(
                  'Show alert dialog',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
