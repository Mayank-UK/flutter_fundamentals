import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class FixedDimensionsView extends StatelessWidget {
  final String _appBarTitle = 'Fixed dimensions';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FixedDimensionsImplimentation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FixedDimensionsImplimentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using "Container" widget (preferred way)',
          content: [
            Container(
              child: Text(
                  '"Container" has named parameters "height" and "width", which take numerical values.'),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: 100,
              width: 100,
              child: const Text('Container'),
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'Using "SizedBox" widget',
          content: [
            Container(
              child: Text(
                  '"SizedBox" has named parameters "height" and "width", which take numerical values.'),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Container(
                alignment: Alignment.center,
                color: Colors.amber,
                child: const Text('SizedBox'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
