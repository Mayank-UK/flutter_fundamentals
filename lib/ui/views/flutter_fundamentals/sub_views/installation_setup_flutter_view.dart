import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';

class InstallationSetupFlutterView extends StatelessWidget {
  final String _appBarTitle = 'Installation and setup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarComponent(appBarTitle: this._appBarTitle),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            SectionWrapperComponent(
              title: 'Installation',
              content: [
                Container(
                  width: double.infinity,
                  child: Text(
                      'Follow latest installation step from flutter\'s official website. They have installation steps for windows, macos and linux.'),
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Installation software list:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text('* Flutter SDK'),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text('* Android Studio'),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text('* Git'),
                    ),
                  ],
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Check installation',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '* Run command "flutter doctor" to confirm proper installation.'),
                    ),
                  ],
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        'In case of installation errors',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '* Check if all the required software are properly installed.'),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                          '* Check if all the environment variables are properly set.'),
                    ),
                  ],
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Setup with IDE',
              content: [
                Container(
                  child: Text(
                      'Install official "dart" and "flutter" plugins from plugins/extensions marketplace of your desired IDE.'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
