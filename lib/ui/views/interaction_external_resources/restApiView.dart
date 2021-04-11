import 'package:flutter/material.dart';

import '../../components/code_preview_component.dart';
import '../../components/section_wrapper_component_component.dart';

class RestApiView extends StatelessWidget {
  final String _appBarTitle = 'Rest API interaction';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _RestApiImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _RestApiImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Rest API interaction',
          content: [
            Container(
              width: double.infinity,
              child: const Text('_'),
            )
          ],
        ),
      ],
    );
  }
}
