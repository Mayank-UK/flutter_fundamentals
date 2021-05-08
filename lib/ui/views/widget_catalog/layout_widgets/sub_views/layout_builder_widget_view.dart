import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import './../../../../components/section_wrapper_component_component.dart';
import './../../../../components/text_block_component.dart';

class LayoutBuilderWidgetView extends StatelessWidget {
  final String _appBarTitle = 'LayoutBuilder';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _LayoutBuilderWidgetImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _LayoutBuilderWidgetImplementation extends StatelessWidget {
  Widget _buildNormalContainer() {
    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
    );
  }

  Widget _buildWideContainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
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
                '"LayoutBuilder" widget has a named parameter builder, which specify the function for building the layout tree.'),
            Container(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth > 600) {
                    return _buildWideContainers();
                  } else {
                    return _buildNormalContainer();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
