import 'package:flutter/material.dart';

import '../../../../components/code_preview_component.dart';
import '../../../../components/section_wrapper_component_component.dart';

class AdaptiveLayoutView extends StatelessWidget {
  final String _appBarTitle = 'Adaptive layout';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/ui_manipulation/responsive_adaptive_layout/adaptive_layout_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _AdaptiveLayoutImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _AdaptiveLayoutImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Responsive layout',
          content: [
            Container(
              width: double.infinity,
              child: const Text('content will be available soon'),
            ),
          ],
        ),
      ],
    );
  }
}
