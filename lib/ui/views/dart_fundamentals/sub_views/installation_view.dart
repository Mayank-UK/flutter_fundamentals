import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';
import '../../../components/text_block_component.dart';

class InstallationView extends StatelessWidget {
  final String _appBarTitle = 'Installation';

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
                  'Dart gets installed automatically with flutter installation.',
                ),
                TextBlockComponent(
                  'You can also write dart code using online dart compilers like the one made available by flutter team.',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
