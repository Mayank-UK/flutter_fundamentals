import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class FractionalDimensionsView extends StatelessWidget {
  final String _appBarTitle = 'Screen fraction dimensions';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/dimensions_constraints/fractional_full_screen_dimensions.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _FractionalDimensionsImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _FractionalDimensionsImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Using "MediaQuery"',
          content: [
            Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.75,
              child: const Text('10% height and 75% width of screen'),
            )
          ],
        ),
      ],
    );
  }
}
