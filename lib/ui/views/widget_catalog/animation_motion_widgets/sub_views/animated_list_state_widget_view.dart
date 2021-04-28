import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';
import '../../../../components/text_block_component.dart';

class AnimatedListStateWidgetView extends StatelessWidget {
  final String _appBarTitle = 'AnimatedListState';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AnimatedListStateImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AnimatedListStateImplementation extends StatefulWidget {
  @override
  __AnimatedListStateImplementationState createState() =>
      __AnimatedListStateImplementationState();
}

class __AnimatedListStateImplementationState
    extends State<_AnimatedListStateImplementation>
    with SingleTickerProviderStateMixin {
  List<int> _list = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    final int _index = _list.length;
    _list.insert(_index, _index);
    _listKey.currentState.insertItem(_index);
  }

  void _removeItem() {
    final int _index = _list.length - 1;
    _listKey.currentState
        .removeItem(_index, (context, animation) => Container());

    _list.removeAt(_index);
  }

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
              'Code will be updated later',
            ),
            /* Container(
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
            ), */
          ],
        ),
      ],
    );
  }
}
