import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class VariablesView extends StatelessWidget {
  final String _appBarTitle = 'Variables';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Variables',
              content: [
                TextBlockComponent(
                  'Variables store references.',
                ),
                TextBlockComponent(
                  'Most of the concepts are similar to other programming languages like declaration, type, initialization, etc.',
                ),
                TextBlockComponent(
                  'Use "?" with a variable to make it nullable.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
