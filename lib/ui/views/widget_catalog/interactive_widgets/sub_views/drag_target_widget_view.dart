import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class DragTargetWidgetView extends StatelessWidget {
  final String _appBarTitle = 'DragTarget';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _DragTargetWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _DragTargetWidgetImplementation extends StatefulWidget {
  @override
  __DragTargetWidgetImplementationState createState() =>
      __DragTargetWidgetImplementationState();
}

class __DragTargetWidgetImplementationState
    extends State<_DragTargetWidgetImplementation> {
  int _acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              '"DragTarget" widget is used mostly with "Draggable" widget.',
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Draggable<int>(
                    data: 10,
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Draggable"),
                      ),
                    ),
                    feedback: Container(
                      color: Colors.deepOrange,
                      height: 100,
                      width: 100,
                      child: Icon(Icons.directions_run),
                    ),
                    childWhenDragging: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.pinkAccent,
                      child: Center(
                        child: Text("Child When Dragging"),
                      ),
                    ),
                  ),
                  DragTarget(
                    builder: (
                      BuildContext context,
                      List<dynamic> accepted,
                      List<dynamic> rejected,
                    ) {
                      return Container(
                        color: Colors.red,
                        height: 100.0,
                        padding: const EdgeInsets.all(8),
                        width: 100.0,
                        child: Center(
                          child: Text(
                              "Value is updated to: ${this._acceptedData}"),
                        ),
                      );
                    },
                    onAccept: (int data) {
                      setState(() {
                        this._acceptedData += data;
                      });
                    },
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
