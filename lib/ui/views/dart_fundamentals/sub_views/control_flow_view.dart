import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class ControlFlowStatementView extends StatelessWidget {
  final String _appBarTitle = 'Control flow statements';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'if-else',
              content: [
                TextBlockComponent(
                  'For conditional logic.',
                ),
                TextBlockComponent(
                  'Similar to other programming languages.',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'for loops',
              content: [
                TextBlockComponent('Similar to other programming languages.'),
              ],
            ),
            SectionWrapperComponent(
              title: 'while and do-while loops',
              content: [
                TextBlockComponent('Similar to other programming languages.'),
              ],
            ),
            SectionWrapperComponent(
              title: 'break and continue',
              content: [
                TextBlockComponent('Similar to other programming languages.'),
              ],
            ),
            SectionWrapperComponent(
              title: 'switch and case',
              content: [
                TextBlockComponent('Similar to other programming languages.'),
              ],
            ),
            SectionWrapperComponent(
              title: 'assert',
              content: [
                TextBlockComponent('Similar to other programming languages.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
