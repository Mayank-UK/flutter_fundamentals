import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/components/text_block_component.dart';

import '../../../components/code_preview_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class ApplicationLifecycleView extends StatelessWidget {
  final String _appBarTitle = 'Application lifecycle';
  final String _codeTabMarkdownLocation =
      'assets/markdowns/lifecycle/application_lifecycle_markdown.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _ApplicationLifecycleImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

class _ApplicationLifecycleImplementation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'inactive',
          content: [
            TextBlockComponent(
              'The application is in an inactive state and is not receiving user input (iOS only)',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'paused',
          content: [
            TextBlockComponent(
              'The application is not currently visible to the user, not responding to user input, and running in the background.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'resumed',
          content: [
            TextBlockComponent(
              'The application is visible and responding to user input.',
            ),
          ],
        ),
        SectionWrapperComponent(
          title: 'suspending',
          content: [
            TextBlockComponent(
              'The application will be suspended momentarily (android only).',
            ),
          ],
        ),
      ],
    );
  }
}
