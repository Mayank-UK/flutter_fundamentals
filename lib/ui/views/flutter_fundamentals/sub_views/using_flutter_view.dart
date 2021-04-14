import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

class UsingFlutterView extends StatelessWidget {
  final String _appBarTitle = 'Using flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Creating a new flutter project',
              content: [
                TextBlockComponent(
                  'Go to the appropriate directory and create a project using command "flutter create project_name" or use IDE (flutter and dart plugin installed).',
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Start development environment',
              content: [
                ContentGroupWrapperComponent(
                  title: 'Through IDE (preferred)',
                  content: <Widget>[
                    TextBlockComponent(
                      '1. Run the application using without debugging mode from the IDE menu.',
                    ),
                    TextBlockComponent(
                      '1. Run the application using without debugging mode from the IDE menu.',
                    ),
                  ],
                ),
                ContentGroupWrapperComponent(
                  title: 'Through command line',
                  content: <Widget>[
                    TextBlockComponent(
                      '1. Run the emulator or connect a physical device through USB debugging.',
                    ),
                    TextBlockComponent(
                      '2. Go to the project directory and run command "flutter run"',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
