import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/markdown_preview_component.dart';

class ImportantConceptsFlutterView extends StatelessWidget {
  final String _appBarTitle = 'Important concepts';
  final String _directoryStructureMarkdown =
      'assets/markdowns/flutter_fundamentals/important_concepts/directory_structure_markdown.md';

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
                Container(
                  width: double.infinity,
                  child: Text(
                      'Flutter is an open source framework developed by Google to create cross platform applications like android, ios, desktop, and web with one codebase using a single programming language called "dart".'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'Flutter framework uses Dart programming language which is also developed by Google. Dart is specially designed to develop frontend UI\'s.'),
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Text(
                      'Flutter is composed of two major components:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '1. Flutter SDK (to compile, develop, debug, etc)',
                    ),
                    Text('2. Widget library based on dart (to build UI)'),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'UI in flutter is build using combining different "Widgets" provided by their widget library. Every UI element in flutter is a widget including margins, paddings, borders, etc'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Flutter applications render at 60FPS which gives a smooth experience.',
                  ),
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Information for web developer\'s',
              content: [
                Container(
                  width: double.infinity,
                  child: Text(
                      'Think of a widget as of an html tag, like an html tag has it\'s own specific attributes, a widget has it\'s own specific named named parameters, like an html tag can have it\'s own inline styling, similarly widgets can have their own styling, as an html tag can have javascript logic and events, similarly a widget can have it\'s own logic and events. Like html tags form a nested tree structure, similarly widget form a nested tree structure to build a UI.'),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                      'In web UI is divided into separate technologies like HTML for structuring, CSS for styling, and javascript for behavior, while in flutter it\'s all present at the same place.'),
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Flutter directory structure',
              content: [
                Container(
                    height: 400,
                    width: double.infinity,
                    child: MarkdownPreviewComponent(
                      markdownLocation: this._directoryStructureMarkdown,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
