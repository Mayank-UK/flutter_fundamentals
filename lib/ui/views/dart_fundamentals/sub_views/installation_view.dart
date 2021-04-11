import 'package:flutter/material.dart';

import '../../../components/main_appbar_component.dart';
import '../../../components/section_wrapper_component_component.dart';

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
                Container(
                  width: double.infinity,
                  child: const Text('_'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
