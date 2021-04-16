import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class ProviderStateManagementView extends StatelessWidget {
  final String _appBarTitle = 'Provider state management';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/state_management/provider_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ProviderStateManagementImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ProviderStateManagementImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'General information',
          content: [
            TextBlockComponent(
              'Provider is package for state management that is officially recommended by the flutter team.',
            ),
            TextBlockComponent(
              'It is a wrapper around InheritedWidget to make them easier to use and more reusable.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'More details will be updated soon.',
          content: [
            TextBlockComponent(
              '_',
            ),
          ],
        ),
      ],
    );
  }
}
