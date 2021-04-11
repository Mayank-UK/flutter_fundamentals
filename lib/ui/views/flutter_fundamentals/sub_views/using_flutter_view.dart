import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';

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
                Container(
                  width: double.infinity,
                  child: Text(
                      'Go to the appropriate directory and create a project using command "flutter create project_name" or use IDE (flutter and dart plugin installed).'),
                )
              ],
            ),
            SectionWrapperComponent(
              title: 'Start development environment',
              content: [
                Wrap(
                  runSpacing: 4,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Through IDE (preferred)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '1. Run the application using without debugging mode from the IDE menu.'),
                    )
                  ],
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Through command line',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '1. Run the emulator or connect a physical device through USB debugging.'),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '2. Go to the project directory and run command "flutter run"'),
                    )
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
