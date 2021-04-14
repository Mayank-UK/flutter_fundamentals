import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/content_group_wrapper_component.dart';
import '../../../components/text_block_component.dart';

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
                TextBlockComponent(
                  'Follow latest installation step from flutter\'s official website. They have installation steps for windows, macos and linux.',
                ),
                ContentGroupWrapperComponent(
                  title: 'Installation software list:',
                  content: <Widget>[
                    Container(
                      width: double.infinity,
                      child: const Text('Flutter SDK'),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text('Android Studio'),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text('Git'),
                    ),
                  ],
                ),
                ContentGroupWrapperComponent(
                  title: 'Check installation',
                  content: <Widget>[
                    TextBlockComponent(
                      'Run command "flutter doctor" to confirm proper installation.',
                    ),
                  ],
                ),
                ContentGroupWrapperComponent(
                  title: 'In case of installation errors',
                  content: <Widget>[
                    TextBlockComponent(
                      'Check if all the required software are properly installed.',
                    ),
                    TextBlockComponent(
                      'Check if all the environment variables are properly set.',
                    ),
                  ],
                ),
              ],
            ),
            SectionWrapperComponent(
              title: 'Setup with IDE',
              content: [
                TextBlockComponent(
                  'Install official "dart" and "flutter" plugins from plugins/extensions marketplace of your desired IDE.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
