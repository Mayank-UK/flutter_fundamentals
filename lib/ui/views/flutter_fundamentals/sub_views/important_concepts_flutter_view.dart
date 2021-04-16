import 'package:flutter/material.dart';
import 'package:flutter_developers_guide/ui/design_system/design_system.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';
import '../../../components/markdown_preview_component.dart';

class ImportantConceptsFlutterView extends StatelessWidget {
  final String _appBarTitle = 'Important concepts';
  final String _directoryStructureMarkdown =
      'assets/markdowns/flutter_fundamentals/important_concepts_flutter_markdown.md';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Important concepts',
              content: [
                TextBlockComponent(
                  'Flutter is an open source framework developed by Google to create cross platform applications like android, ios, desktop, and web with one codebase using a single programming language called "dart".',
                ),
                TextBlockComponent(
                  'Flutter framework uses Dart programming language which is also developed by Google. Dart is specially designed to develop frontend UI\'s.',
                ),
                ContentGroupWrapperComponent(
                  title: 'Flutter is composed of two major components:',
                  content: <Widget>[
                    TextBlockComponent(
                      '1. Flutter SDK (to compile, develop, debug, etc)',
                    ),
                    TextBlockComponent(
                      '2. Widget library based on dart (to build UI)',
                    ),
                  ],
                ),
                TextBlockComponent(
                  'UI in flutter is build using combining different "Widgets" provided by their widget library. Every UI element in flutter is a widget including margins, paddings, borders, etc',
                ),
                TextBlockComponent(
                  'Flutter applications render at 60FPS which gives a smooth experience.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Information for web developer\'s',
              content: [
                TextBlockComponent(
                  'Think of a widget as of an html tag, like an html tag has it\'s own specific attributes, a widget has it\'s own specific named named parameters, like an html tag can have it\'s own inline styling, similarly widgets can have their own styling, as an html tag can have javascript logic and events, similarly a widget can have it\'s own logic and events. Like html tags form a nested tree structure, similarly widget form a nested tree structure to build a UI.',
                ),
                TextBlockComponent(
                  'In web UI is divided into separate technologies like HTML for structuring, CSS for styling, and javascript for behavior, while in flutter it\'s all present at the same place.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Flutter directory structure',
              content: [
                MarkdownPreviewComponent(
                  markdownLocation: this._directoryStructureMarkdown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
