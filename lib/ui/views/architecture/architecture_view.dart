import 'package:flutter/material.dart';

import '../../components/main_appbar_component.dart';
import '../../components/section_wrapper_component_component.dart';
import '../../components/content_group_wrapper_component.dart';
import '../../components/text_block_component.dart';
import '../../components/markdown_preview_component.dart';

class ArchitectureView extends StatelessWidget {
  final String _appBarTitle = 'Architecture';
  final String _markdownLocation =
      'assets/markdowns/architecture/project_directory_structure_markdown.md';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'MVVM architecture pattern',
              content: [
                TextBlockComponent(
                  'Development using Model View ViewModel (MVVM) architecture pattern helps in easy and efficient development of codebase. It makes applications maintainable in long term and provides easy scalability in future.',
                ),
                ContentGroupWrapperComponent(
                  title: 'MVVM layers',
                  content: [
                    TextBlockComponent(
                      'Model layer represents the data application is dealing with.',
                    ),
                    TextBlockComponent(
                      'View layer represents the UI and all the visible part of an application. Users interact with the view layer of an application.',
                    ),
                    TextBlockComponent(
                      'ViewModel layer acts as a middleman between View layer and Model layer to keep things separate and maintainable.',
                    ),
                  ],
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Project directory structure',
              content: [
                MarkdownPreviewComponent(
                    markdownLocation: this._markdownLocation)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
